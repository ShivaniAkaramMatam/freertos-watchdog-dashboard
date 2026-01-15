#ifndef RTOS_EVENTS_H
#define RTOS_EVENTS_H

#include "FreeRTOS.h"
#include "queue.h"

// Event queue handle (shared)
extern QueueHandle_t event_queue;

// Initialize event system (queue already created in main)
void evt_init(void);

// Push formatted event to queue
void evt_push(const char* fmt, ...);

#endif // RTOS_EVENTS_H

