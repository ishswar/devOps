#!/bin/bash 


echo "================="
echo "HomeWork 1"
echo "Pranay (pranay.shah@gmail.com)"
echo "================="

hw_data=$(/usr/sbin/system_profiler SPHardwareDataType)

#printf "\n$hw_data\n"

ram=$(grep Memory: <<<"$hw_data"  | xargs)
model=$(grep 'Model Name' <<<"$hw_data"  | xargs)
modelInfo=$(grep 'Model Identifier:' <<<"$hw_data"  | xargs)
cpuname=$(grep 'Processor Name:' <<<"$hw_data"  | xargs)
cpuspeed=$(grep 'Processor Speed:' <<<"$hw_data"  | xargs)
cpucores=$(grep Cores: <<<"$hw_data"  | xargs)

printf "\n"
echo "Printing Information about $model ($modelInfo)"

printf "\n\n"

echo "Disk Info"
echo "__________"
printf "\n"

df -h

printf "\n\n"
echo "CPU info"
echo "________"
printf "\n"

sysctl -n machdep.cpu.brand_string

echo $cpuname
echo $cpuspeed
echo $cpucores

printf "\n\n"
echo "RAM/Memory Info"
echo "_______________"
printf "\n"
 
echo "$ram"

printf "\n\n"
echo "IP/Network Info"
echo "________________"
printf "\n"

macaddr=$(ifconfig | grep en0 -A3 | grep ether | xargs)
ipaddress=$(ipconfig getifaddr en0)

echo "MAC address: $macaddr"
echo "IP address: $ipaddress"


printf "\n"




