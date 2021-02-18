#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch bar
polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown
