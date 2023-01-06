#! /bin/bash
* * * * * [ $(cat /sys/class/power_supply/BAT1/capacity) -lt 20 ] && [ "$(cat /sys/class/power_supply/BAT1/status)" = "Discharging" ] && DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus i3-nagbar -m " Battery Low! Charge NOW !!!!!"

