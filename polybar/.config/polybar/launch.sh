#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit

polybar bar1 2>&1 | tee -a /tmp/polybar.log & disown
