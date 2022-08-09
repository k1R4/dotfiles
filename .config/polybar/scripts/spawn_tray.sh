#!/bin/sh
echo "---" | tee -a /tmp/polybar5.log
polybar tray >> /tmp/polybar5.log 2>&1