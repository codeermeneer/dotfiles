#!/usr/bin/env bash
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

echo "---" | tee -a /tmp/polybar1.log
polybar bar >>/tmp/polybar1.log 2>&1 &

echo "polybar started"
