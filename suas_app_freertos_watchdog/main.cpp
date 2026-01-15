#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "rtos_events.h"
#include "safe_print.h"
#include "watchdog.h"

QueueHandle_t event_queue = NULL;
static constexpr uint16_t STACK_SIZE = 1024;

// -------------------- Tasks --------------------
void task_one(void* p) {
    (void)p;
    int n = 0;
    while (1) {
        evt_push("{\"task\":\"one\",\"n\":%d}", n++);
        task_watchdog_kick();
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}

void task_two(void* p) {
    (void)p;
    int n = 0;
    while (1) {
        evt_push("{\"task\":\"two\",\"n\":%d}", n++);
        task_watchdog_kick();
        vTaskDelay(pdMS_TO_TICKS(700));
    }
}

void task_three(void* p) {
    (void)p;
    int n = 0;

    while (1) {
        evt_push("{\"task\":\"three\",\"n\":%d}", n++);
        task_watchdog_kick();
        vTaskDelay(pdMS_TO_TICKS(600));

        if (n == 5) {
            evt_push("{\"task\":\"three\",\"event\":\"failure\"}");

            // Stop feeding watchdog (but keep yielding)
            while (1) {
                vTaskDelay(pdMS_TO_TICKS(1000));
            }
        }
    }
}


// -------------------- Event Dispatcher --------------------
void event_dispatcher(void* p) {
    (void)p;
    char* msg;
    while (1) {
        if (xQueueReceive(event_queue, &msg, portMAX_DELAY) == pdTRUE) {
            safe_printf("%s\n", msg);
            fflush(stdout);
            vPortFree(msg);
        }
    }
}

// -------------------- Main --------------------
extern "C" void bfl_main(void) {
    vInitializeBL602();
    safe_print_init();

    event_queue = xQueueCreate(32, sizeof(char*));
    evt_init();

    watchdog_init(pdMS_TO_TICKS(500), pdMS_TO_TICKS(1500));

    xTaskCreateWithWatchdog(task_one, "task1", STACK_SIZE, nullptr, 1, nullptr);
    xTaskCreateWithWatchdog(task_two, "task2", STACK_SIZE, nullptr, 1, nullptr);
    xTaskCreateWithWatchdog(task_three, "task3", STACK_SIZE, nullptr, 1, nullptr);
    xTaskCreate(event_dispatcher, "dispatcher", STACK_SIZE, nullptr, 3, nullptr);

    vTaskStartScheduler();
}

