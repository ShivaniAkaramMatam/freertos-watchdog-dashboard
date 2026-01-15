#include "log.h"
#include "safe_print.h"
#include "watchdog.h"
#include <stdio.h>
#include <stdarg.h>

void log_event(const char *fmt, ...) {
    TaskHandle_t task = xTaskGetCurrentTaskHandle();
    const char *name = pcTaskGetName(task);

    uint32_t ticks = xTaskGetTickCount();
    uint32_t ms = ticks * portTICK_PERIOD_MS;

    uint32_t hb = watchdog_get_heartbeat(task);

    safe_printf("[T=%lu ms][%s][HB=%lu] ",
                ms,
                name ? name : "main",
                hb);

    va_list args;
    va_start(args, fmt);
    vprintf(fmt, args);
    va_end(args);

    safe_printf("\n");
}

