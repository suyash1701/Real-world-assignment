#!/bin/bash

log_file="script.log"
timestamp=$(date '+%Y-%m-%d %H:%m:%S')

echo "$timestamp - Script executed sucessfully" >> $log_file
echo "log entry added to $log_file"
