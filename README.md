# FreeRTOS Watchdog Dashboard

## Overview

This project implements a **FreeRTOS-based watchdog monitoring system** targeting Bouffalo Lab (BL602-class) hardware. It demonstrates how to supervise FreeRTOS tasks using a software watchdog.

The project is structured as (`suas_app_freertos_watchdog`) built on top of the Bouffalo Lab SDK and FreeRTOS, with supporting utilities and build artifacts.

## Key Features

* FreeRTOS task watchdog implementation
* Task heartbeat and timeout detection
* Thread-safe logging and printing
* RTOS event tracking
* Serial-based dashboard server (Python)

## Target Platform

* **MCU**: Bouffalo Lab BL602 (or compatible)
* **RTOS**: FreeRTOS
* **Toolchain**: Bouffalo Lab SDK / GCC

## Project Structure

```
freertos-watchdog-dashboard-main/
├── Makefile                     # Top-level build entry
├── proj_config.mk               # Board and firmware configuration
├── suas_app_freertos_watchdog/  # Main application source
│   ├── main.cpp                 # Application entry point
│   ├── watchdog.cpp/.h          # Watchdog logic
│   ├── rtos_events.cpp/.h       # FreeRTOS event hooks
│   ├── log.cpp/.h               # Logging utilities
│   ├── safe_print.c/.h          # Thread-safe printing
│   ├── serial_server.py         # Host-side serial dashboard
│   └── bouffalo.mk              # App-specific build config
├── build_out/                   # Generated build artifacts (auto-generated)
└── genromap                     # ROM map generation helper
```

## Watchdog Design

* Each monitored FreeRTOS task periodically "feeds" the watchdog
* Missed heartbeats trigger logging and watchdog action
* Watchdog logic runs independently to avoid task interference
* RTOS hooks capture task and scheduling events

## Serial Dashboard

The `serial_server.py` script runs on the host machine and connects to the device over a serial port to:

* Display watchdog status
* Stream logs in real time
* Help visualize task health and resets

### Requirements

* Python 3.x
* `pyserial`

### Example Usage

```bash
python serial_server.py /dev/ttyUSB0 115200
```

## Building the Firmware

1. Install the Bouffalo Lab SDK and toolchain
2. Configure the board and options in `proj_config.mk`
3. Build the project:

```bash
./genromap
```

Output binaries will be placed in `build_out/`.

## Flashing

Use the Bouffalo Lab flashing tools to program the generated `.bin` files to the device. Refer to the SDK documentation for exact flashing commands.

```bash
blflash flash build_out/<project name>.bin --port <port>
```

## Configuration

Key options can be adjusted in:

* `proj_config.mk` – board, flash size, firmware features
* `watchdog.h` – watchdog timing and limits

## Notes

* The `build_out/` directory is auto-generated and may be excluded from version control
* Ensure serial baud rate matches firmware configuration

## License

This project is provided for educational and experimental use

---
