!#/bin/bash


# check free dish space 

set -x # debug mode
set -e # Exit when error. 
set -o # pipe fail 

 # echo "print the disk space"


df -h # to print dish space

 #echo " Print the memory"

vm_stat # To print memory  for MAC OS 

free command are used to print memory in ubuntu OS insted of vm_stat.

 




 #echo " Print the number of  CPU"

sysctl -n hw.ncpu # This command is used to print number of CUP for MAC os.

nproc command is used to print number of CPU in ubuntu OS. 

ps -ef 

grep 

pipecommamd ( | )


awk command in linux 

This awk command is used for pattern scaninig

awk '{ print }' file name # syntyx 
 

example ps -ef | awk '{ print $2 }'

 
