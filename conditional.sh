#! /bin/bash

# declare a variable
count=10

# `-eq` stand for equal
# `-ne` stand for not-equal
# `-gt` stand for greater than
# `-lt` stand for less then
# you can use '>' or '<' symbol also, but then you need to replace `[ ... ]` with `(( ... ))`

if [ $count -lt 10 ]
then
    echo "condition is true"
elif (( $count > 0 ))
then
    echo "inside else if block"
else
    echo "condition false"

# close the if statement by `fi`
fi


echo "Enter Your Age:"
read age
if (( $age < 18 )) && (( $age > 0 ))
then echo "still you want to go?(y/n)"
    read option
    case $option in
        y) echo "welcome"
        ;;
        n) echo "good choice!"
        ;;
        *) echo "input doesnt match"
        ;;
    esac
elif [[ $age > 18 && $age < 100 ]]
    then echo "welcome"
else 
    echo "invalid age!"
fi
exit 0

#🥴 heredoc
cat << variable
this is line 1
  this is line 2
variable
