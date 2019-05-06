# devOps_w1
For DevOps learning

Sample output from this scripts
Scripts are only tested on macintosh and will print Hardware inforamtion 

You can either run program "<b>devops01a.sh</b>" and it will get all the hardward info 

<pre>
➜  DevOps01 git:(master) ✗ ./devops01a.sh     
=================
HomeWork 1
Pranay (******@gmail.com)
=================

Printing Information about Model Name: MacBook Pro (Model Identifier: MacBookPro11,2)


Disk Info
__________

Filesystem      Size   Used  Avail Capacity iused               ifree %iused  Mounted on
/dev/disk1s1   466Gi  429Gi   26Gi    95% 3762761 9223372036851013046    0%   /
devfs          356Ki  356Ki    0Bi   100%    1230                   0  100%   /dev
/dev/disk1s4   466Gi   10Gi   26Gi    29%      10 9223372036854775797    0%   /private/var/vm
map -hosts       0Bi    0Bi    0Bi   100%       0                   0  100%   /net
map auto_home    0Bi    0Bi    0Bi   100%       0                   0  100%   /home


CPU Info
__________

Intel(R) Core(TM) i7-4980HQ CPU @ 2.80GHz
Processor Name: Intel Core i7
Processor Speed: 2.8 GHz
Total Number of Cores: 4


IP/Network Info
__________

Memory: 16 GB


RAM/Memory Info
__________

MAC address: ether 60:f8:1d:a8:21:4c
IP address: 10.98.201.67


</pre>


Or You can program "<b>devops01<red>b</red>.sh</b>" then you can control what information to print
Some sample output 

<pre>
➜  DevOps01 git:(master) ✗ ./devops01b.sh -volumes -cpu



Disk Info
__________

Filesystem      Size   Used  Avail Capacity iused               ifree %iused  Mounted on
/dev/disk1s1   466Gi  429Gi   25Gi    95% 3762756 9223372036851013051    0%   /
devfs          356Ki  356Ki    0Bi   100%    1230                   0  100%   /dev
/dev/disk1s4   466Gi   11Gi   25Gi    31%      11 9223372036854775796    0%   /private/var/vm
map -hosts       0Bi    0Bi    0Bi   100%       0                   0  100%   /net
map auto_home    0Bi    0Bi    0Bi   100%       0                   0  100%   /home


CPU Info
__________

Intel(R) Core(TM) i7-4980HQ CPU @ 2.80GHz
Processor Name: Intel Core i7
Processor Speed: 2.8 GHz
Total Number of Cores: 4




➜  DevOps01 git:(master) ✗ ./devops01b.sh -volumes     


Disk Info
__________

Filesystem      Size   Used  Avail Capacity iused               ifree %iused  Mounted on
/dev/disk1s1   466Gi  429Gi   25Gi    95% 3762756 9223372036851013051    0%   /
devfs          356Ki  356Ki    0Bi   100%    1230                   0  100%   /dev
/dev/disk1s4   466Gi   11Gi   25Gi    31%      11 9223372036854775796    0%   /private/var/vm
map -hosts       0Bi    0Bi    0Bi   100%       0                   0  100%   /net
map auto_home    0Bi    0Bi    0Bi   100%       0                   0  100%   /home

➜  DevOps01 git:(master) ✗ ./devops01b.sh -cpu    


CPU Info
__________

Intel(R) Core(TM) i7-4980HQ CPU @ 2.80GHz
Processor Name: Intel Core i7
Processor Speed: 2.8 GHz
Total Number of Cores: 4



➜  DevOps01 git:(master) ✗ ./devops01b.sh -all
=================
HomeWork 1
Pranay (********@gmail.com)
=================

Printing Information about Model Name: MacBook Pro (Model Identifier: MacBookPro11,2)


Disk Info
__________

Filesystem      Size   Used  Avail Capacity iused               ifree %iused  Mounted on
/dev/disk1s1   466Gi  429Gi   25Gi    95% 3762756 9223372036851013051    0%   /
devfs          356Ki  356Ki    0Bi   100%    1230                   0  100%   /dev
/dev/disk1s4   466Gi   11Gi   25Gi    31%      11 9223372036854775796    0%   /private/var/vm
map -hosts       0Bi    0Bi    0Bi   100%       0                   0  100%   /net
map auto_home    0Bi    0Bi    0Bi   100%       0                   0  100%   /home


CPU Info
__________

Intel(R) Core(TM) i7-4980HQ CPU @ 2.80GHz
Processor Name: Intel Core i7
Processor Speed: 2.8 GHz
Total Number of Cores: 4


IP/Network Info
__________

Memory: 16 GB


RAM/Memory Info
__________

MAC address: ether 60:f8:1d:a8:21:4c
IP address: 10.98.201.67



➜  DevOps01 git:(master) ✗ ./devops01b.sh -abcd
usage: ./devops01b.sh options

In order to run this script you need to pass one of below options

OPTIONS:
   -h            Show this message
   -network      Network information about this machien 
   -ram      	 Installed memory on this machine (in Gb)
   -cpu      	 CPU information of this machine 
   -volumes      Hard disk information of this machine 
   
   
➜  DevOps01 git:(master) ✗ ./devops01b.sh      
No parameters were passed
usage: ./devops01b.sh options

In order to run this script you need to pass one of below options

OPTIONS:
   -h            Show this message
   -network      Network information about this machien 
   -ram      	 Installed memory on this machine (in Gb)
   -cpu      	 CPU information of this machine 
   -volumes      Hard disk information of this machine 
➜  DevOps01 git:(master) ✗ 
</pre>
