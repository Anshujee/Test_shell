
#!/bin/bash

# Shell script to print number divisiable by 3  


for i in {1..100}; do

if ([ `expr $i % 3` == 0 ]);

then 

   echo $i

fi

done




