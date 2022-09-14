#! /bin/bash

# echo $1 $2 $3
# now if you run this scipt with 3 argument like : ./scriptInput a b c, then $1 $2 $3 value will be a b and c respectively

# if we put $0 then the file name will be 0 index argument
# echo $0

# now taking argument as array
# `$@` represents the unlimited size of an array 
array=("$@")

# for (( i=0; i<${#array[@]}; i++ ))
# do echo ${array[$i]}
# done

# anothe way
for i in ${array[@]}
do echo $i
done

# short hand syntex for printing out array e,emts amd length

# ❤️Print all array elemnts
echo ${array[@]}

# ❤️ print length
echo ${#array[@]}
