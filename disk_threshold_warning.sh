#!/bin/bash

threshold_disk_percentage=80

#df command used to calculate file system disk space usage
current_disk_percentage=$(df|tr -s " "|cut -d " " -f5|cut -d "%" -f1|head -2|tail -1)

email=root
subject="Disk Threshold Exceeded"

if [ $threshold_disk_percentage -lt $current_disk_percentage ]; then
echo "WARNING: The current disk space has reached $current_disk_percentage percent!"|mail -s $subject $email
fi

