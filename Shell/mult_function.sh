#function that receives 2 
#numbers and multiplies them.

#!/bin/bash
echo "enter number 1"
read num1
echo "enter number 2"
read num2

mult () {
    num1=$1
    num2=$2

        while [ "$num1" -gt 0 ]
        do
            ans=`expr $num2 + $num2`
            num1=`expr $num1 - 1`
        done 
    echo $ans

}

echo "Answer is : " 
mult "$num1" "$num2"
