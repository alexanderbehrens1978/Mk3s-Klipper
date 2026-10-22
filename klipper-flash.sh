#!/bin/bash

echo "Prusa Klipper Flash"
avrdude -v -p atmega2560 -c wiring -P /dev/ttyACM0 -b 115200 -D -U flash:w:/home/alex/mk3s-flash/klipper.elf.hex:i
