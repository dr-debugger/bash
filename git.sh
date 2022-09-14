pwd=$(pwd)

echo "Do you want to perform in this directory $pwd ? (y/n)"
read ops
case $ops in
    y) 
    git add .

    echo "your commit message?"
    read message
    git commit -m "$message"
    ;;
    n) echo "what your dir?"
        read dir
        echo $dir
    ;;
    *) echo "wrong input! failed."
       exit 0
    ;;
esac
