#!/bin/bash 
#https://github.com/ishswar/devOps_w1 

getHardWareInfo()
{

#This is mac only function 
hw_data=$(/usr/sbin/system_profiler SPHardwareDataType)

#print everthing - but it has sensative information so only for debug
#printf "\n$hw_data\n"

#Grab what we need and trim() it from spaces 
#Installed memory 
ram=$(grep Memory: <<<"$hw_data"  | xargs)

#Machin Model
model=$(grep 'Model Name' <<<"$hw_data"  | xargs)
modelInfo=$(grep 'Model Identifier:' <<<"$hw_data"  | xargs)

#CPU infomation
cpuname=$(grep 'Processor Name:' <<<"$hw_data"  | xargs)
cpuspeed=$(grep 'Processor Speed:' <<<"$hw_data"  | xargs)
cpucores=$(grep Cores: <<<"$hw_data"  | xargs)
}

getRamInfo()
{
	printbanner "IP/Network Info"
	echo $ram
}

getDiskInfo()
{
  
  printbanner "Disk Info"
   #Print disk info in human redable format
   df -h
}

getNetWorkInfo()
{

printbanner "RAM/Memory Info"
#Get IP Address and MAC address
macaddr=$(ifconfig | grep en0 -A3 | grep ether | xargs)
ipaddress=$(ipconfig getifaddr en0)

echo "MAC address: $macaddr"

if [[  -n "$ipaddress" ]];
then 
	echo "IP address: $ipaddress"
else
	echo "IP address: <<No connectivity ?>>"
fi
}

getCPUInfo()
{
printbanner "CPU Info"
# Get CPU info 
sysctl -n machdep.cpu.brand_string

echo $cpuname
echo $cpuspeed
echo $cpucores
}

printbanner()
{

#Print banner	
printf "\n\n"
echo "$1"
echo "__________"
printf "\n"
}

if [ -z "$ram" ];
 then 
 getHardWareInfo
fi 


if [[ $# -eq 0 || "$1" == "all" ]] ; then
	echo "================="
	echo "HomeWork 1"
	echo "Pranay (https://github.com/ishswar)"
	echo "================="

	printf "\n"
	echo "Printing Information about $model ($modelInfo)"



	getDiskInfo



	getCPUInfo


	 
	getRamInfo



	getNetWorkInfo

	printf "\n"
fi







