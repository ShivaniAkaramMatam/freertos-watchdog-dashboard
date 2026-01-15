#include "rtos_events.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "safe_print.h"
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <stdlib.h>

// Access queue from main
extern QueueHandle_t event_queue;

void evt_init(void) {
    // Nothing to do; queue is created in main.cpp
}

void evt_push(const char* fmt, ...) {
    if (!event_queue) return;

    char buffer[128];  // stack buffer
    va_list args;
    va_start(args, fmt);
    vsnprintf(buffer, sizeof(buffer), fmt, args);
    va_end(args);

    char* copy = (char*)pvPortMalloc(strlen(buffer) + 1);
    if (!copy) return;

    strcpy(copy, buffer);

    // Block until queue has space
    if (xQueueSend(event_queue, &copy, portMAX_DELAY) != pdPASS) {
        vPortFree(copy);
    }
}

