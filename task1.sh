##!/bin/bash

# Start infinite.sh in the background
./infinite.sh

# Give it a moment to start
sleep 1

# Find the PID of the infinite.sh process
PID=$(ps aux | grep '[i]nfinite.sh' | awk '{print $2}')

# Kill the process
kill $PID

# Confirm the process is killed
if ps -p $PID > /dev/null
then
   echo "Failed to kill infinite.sh"
else
   echo "Successfully killed infinite.sh"
fi
