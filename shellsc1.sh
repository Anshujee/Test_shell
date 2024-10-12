#!/bin/bash

# shell script to find odd  number b/w 1 -100 

for i in {1..100}; do

if ([ `expr $i % 2` == 1 ]);


then 


     echo " number not divisible by 2 "

     echo $i
   
     echo " Odd number is "

     echo $i

fi

done
