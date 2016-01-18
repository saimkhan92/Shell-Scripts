#!/bin/bash

ping 8.8.8.8 -c 1 -W 1 &>/dev/null
ping_flag=$?

if [ $ping_flag -eq 0 ]; then
Internet_Connected="Connected"
else
Internet_Connected="Not Connected"
fi

CPU_pipe=$(uptime|tr -s ":"|cut -d ":" -f5)
RAM_pipe=$(free -m|tr -s " "|grep Mem|cut -d " " -f4)
loBytesReceived=$(cat /proc/net/dev|grep lo|tr -s " "|cut -d " " -f3)
loBytesTransmitted=$(cat /proc/net/dev|grep lo|tr -s " "|cut -d " " -f11)
enp0s3BytesReceived=$(cat /proc/net/dev|grep enp0s3|tr -s " "|cut -d " " -f2)
enp0s3BytesTransmitted=$(cat /proc/net/dev|grep enp0s3|tr -s " "|cut -d " " -f10)
TotalUsers=$(cat /etc/passwd|cut -d ":" -f1|wc -l)
ActiveUsers=$(uptime|cut -d "," -f2)
Shell=$(cat /etc/passwd|cut -d ":" -f7|sort|uniq -c|sort -rn|head -1|tr -s " "|cut -d " " -f3)


echo -e "CPU AND MEMORY RESOURCES --------------------------\n"
echo -e "CPU Load Average: $CPU_pipe"
echo -e "Free RAM: $RAM_pipe MB \n\n "

echo -e "NETWORK CONNECTIONS -------------------------------\n"
echo -e "lo Bytes Received: $loBytesReceived"
echo -e "Bytes Transmitted: $loBytesTransmitted \n"
echo -e "enp0s3 BytesReceived: $enp0s3BytesReceived"
echo -e "Bytes Transmitted: $enp0s3BytesTransmitted\n"
echo -e "Internet Connectivity: $Internet_Connected\n \n"

echo -e "ACCOUNT INFORMATION -------------------------------\n"
echo -e "Total Users: $TotalUsers"
echo -e "Number Active: $ActiveUsers"
echo -e "Most Frequently Used Shell: $Shell\n"



