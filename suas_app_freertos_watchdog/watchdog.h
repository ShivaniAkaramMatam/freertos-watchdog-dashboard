#pragma once
#include "FreeRTOS.h"
#include "task.h"

typedef struct {
    TaskHandle_t handle;
    TaskFunction_t entry;
    const char *name;
    void *params;
    UBaseType_t priority;
    uint16_t stackSize;
    TickType_t last_heartbeat;
    uint32_t crashCount;
    uint32_t heartbeat_count;   // <<< ADD THIS
} WatchdogTaskInfo;


void watchdog_init(TickType_t check_period_ms, TickType_t timeout_ms);
void task_watchdog_kick(void);
uint32_t watchdog_get_heartbeat(TaskHandle_t task);
BaseType_t xTaskCreateWithWatchdog(TaskFunction_t pxTaskCode,
                                   const char* pcName,
                                   uint16_t usStackDepth,
                                   void* pvParameters,
                                   UBaseType_t uxPriority,
                                   TaskHandle_t* pxCreatedTask);
                                   

