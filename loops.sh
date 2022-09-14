#! /bin/bash

number=0

# 🥴for loop:
# there is two way to write for loop, 
# first one is the traditional way(like other general purpose languase)

# `break` breaks the loop
# `continue` skip the current iteration
for (( i=0; i<=5; i++ ))
do 
    if [ $i -gt 5 ] 
    # after i > 5 , break the loop
    then 
        break
    fi

    if [ $i -eq 3 ] || [ $i -eq 4 ] 
    # if i == 3 or i == 4 , skip that iteration
    then 
        continue
    fi

    echo $i
done
exit 0


# another way to writing for loop
# it will print 1, 2, 3, 4, 5 in console
# in the `for in` loop the syntext would be `for variableName in iterableObject`
# here `i` is the value of the iterable object
for i in 1 2 3 4 5
do echo $i
done

# now how to loop through a large number , follow the syntex {start..ending..increament} // increment is optional
for i in {5..20..5}
do echo $i
done
# it will print 5 to 20 with increament with 5


# 🥴until loop:
# until loops runs, until the given condition is false
until (( $number >= 10 ))
do 
    echo "$number"
    number=$(( number+1 ))
done

# 🥴while loop: 
# whle loop is similar like any other general purpose languase
while (( $number <= 10 ))
do 
    echo "$number"
    number=$(( number+1 ))
done
