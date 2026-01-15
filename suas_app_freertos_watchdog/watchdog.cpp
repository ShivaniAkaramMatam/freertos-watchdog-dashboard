#include "watchdog.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include <stdio.h>
#include <string.h>

#define MAX_TASKS 10

static WatchdogTaskInfo g_tasks[MAX_TASKS];
static uint8_t g_task_count = 0;
static TickType_t g_timeout;
static TickType_t g_check_period;

extern QueueHandle_t event_queue;   // from main.cpp

// ---------------- Task Wrapper ----------------
static void watchdog_task_wrapper(void* pvParameters) {
    WatchdogTaskInfo* info = (WatchdogTaskInfo*)pvParameters;

    info->handle = xTaskGetCurrentTaskHandle();

    info->entry(info->params);

    // If task exits, delete it
    vTaskDelete(NULL);
}


// ---------------- Monitor Task ----------------
static void watchdog_monitor_task(void*) {
    char* buf;

    while (1) {
        TickType_t now = xTaskGetTickCount();

        for (int i = 0; i < g_task_count; i++) {
            if (!g_tasks[i].handle) continue;

            if ((now - g_tasks[i].last_heartbeat) > g_timeout) {
                g_tasks[i].crashCount++;

                printf("[WATCHDOG] Restarting %s (%lu)\n",
                       g_tasks[i].name,
                       (uint32_t)g_tasks[i].crashCount);

                // Send restart event to Python
                if (event_queue) {
                    buf = (char*)pvPortMalloc(128);
                    if (buf) {
                        snprintf(buf, 128,
                            "{\"task\":\"%s\",\"event\":\"watchdog_restart\",\"count\":%lu}",
                            g_tasks[i].name,
                            (uint32_t)g_tasks[i].crashCount);
                        xQueueSend(event_queue, &buf, 0);
                    }
                }

                vTaskDelete(g_tasks[i].handle);

                xTaskCreate(
                    watchdog_task_wrapper,
                    g_tasks[i].name,
                    g_tasks[i].stackSize,
                    &g_tasks[i],
                    g_tasks[i].priority,
                    &g_tasks[i].handle
                );

                g_tasks[i].last_heartbeat = xTaskGetTickCount();
            }
        }
        vTaskDelay(g_check_period);
    }
}

// ---------------- Public API ----------------
void watchdog_init(TickType_t check_period, TickType_t timeout) {
    g_check_period = check_period;
    g_timeout = timeout;

    xTaskCreate(watchdog_monitor_task,
                "watchdog_monitor",
                512,
                NULL,
                10,
                NULL);
}

BaseType_t xTaskCreateWithWatchdog(TaskFunction_t pxTaskCode,
                                  const char* pcName,
                                  uint16_t usStackDepth,
                                  void* pvParameters,
                                  UBaseType_t uxPriority,
                                  TaskHandle_t* pxCreatedTask) {
    if (g_task_count >= MAX_TASKS) return pdFAIL;

    WatchdogTaskInfo* info = &g_tasks[g_task_count++];

    info->entry = pxTaskCode;
    info->name = pcName;
    info->params = pvParameters;
    info->priority = uxPriority;
    info->stackSize = usStackDepth;
    info->crashCount = 0;
    info->last_heartbeat = xTaskGetTickCount();

    return xTaskCreate(watchdog_task_wrapper,
                       pcName,
                       usStackDepth,
                       info,
                       uxPriority,
                       pxCreatedTask);
}

void task_watchdog_kick(void) {
    TaskHandle_t h = xTaskGetCurrentTaskHandle();
    for (int i = 0; i < g_task_count; i++) {
        if (g_tasks[i].handle == h) {
            g_tasks[i].last_heartbeat = xTaskGetTickCount();
            return;
        }
    }
}

