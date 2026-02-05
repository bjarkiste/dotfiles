#!/usr/bin/env bash

if pgrep -f "tilt up" > /dev/null;
then
  echo "Up!"
  exit 0
else
  echo "Down :("
  exit 0
fi

