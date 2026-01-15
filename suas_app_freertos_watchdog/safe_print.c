#include "safe_print.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
#include <stdio.h>
#include <stdarg.h>

#define PRINT_QUEUE_LEN 16
#define PRINT_MSG_MAX   128

typedef struct {
    char msg[PRINT_MSG_MAX];
} PrintMsg;

static QueueHandle_t print_queue = NULL;

static void print_task(void *p) {
    (void)p;
    PrintMsg m;

    while (1) {
        if (xQueueReceive(print_queue, &m, portMAX_DELAY) == pdTRUE) {
            printf("%s\n", m.msg);
        }
    }
}

void safe_print_init(void) {
    print_queue = xQueueCreate(PRINT_QUEUE_LEN, sizeof(PrintMsg));
    configASSERT(print_queue);

    xTaskCreate(
        print_task,
        "print_task",
        512,
        NULL,
        2,
        NULL
    );
}

void safe_printf(const char *fmt, ...) {
    if (!print_queue) return;

    PrintMsg m;
    va_list args;
    va_start(args, fmt);
    vsnprintf(m.msg, PRINT_MSG_MAX, fmt, args);
    va_end(args);

    xQueueSend(print_queue, &m, 0);
}

