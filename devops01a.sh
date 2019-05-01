#!/bin/bash 

getHardWareInfo()
{

hw_data=$(/usr/sbin/system_profiler SPHardwareDataType)

#printf "\n$hw_data\n"

ram=$(grep Memory: <<<"$hw_data"  | xargs)
model=$(grep 'Model Name' <<<"$hw_data"  | xargs)
modelInfo=$(grep 'Model Identifier:' <<<"$hw_data"  | xargs)
cpuname=$(grep 'Processor Name:' <<<"$hw_data"  | xargs)
cpuspeed=$(grep 'Processor Speed:' <<<"$hw_data"  | xargs)
cpucores=$(grep Cores: <<<"$hw_data"  | xargs)
}

getDiskInfo()
{
   df -h
}

getNetWorkInfo()
{

macaddr=$(ifconfig | grep en0 -A3 | grep ether | xargs)
ipaddress=$(ipconfig getifaddr en0)

echo "MAC address: $macaddr"
echo "IP address: $ipaddress"
}

getCPUInfo()
{

sysctl -n machdep.cpu.brand_string

echo $cpuname
echo $cpuspeed
echo $cpucores
}

printbanner()
{
printf "\n\n"
echo "$1"
echo "__________"
printf "\n"
}

echo "================="
echo "HomeWork 1"
echo "Pranay (pranay.shah@gmail.com)"
echo "================="

getHardWareInfo

printf "\n"
echo "Printing Information about $model ($modelInfo)"

printbanner "Disk Info"

getDiskInfo

printbanner "CPU Info"

getCPUInfo

printbanner "RAM/Memory Info"
 
echo "$ram"

printbanner "IP/Network Info"

getNetWorkInfo

printf "\n"





