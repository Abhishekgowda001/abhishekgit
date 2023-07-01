#!/bin/bash

echo "select any opt to continue"
echo -e "1) addition\n2) substration\n3) multiplication\n4) division\n5) exit"
echo "enter number to select"
read opt
case $opt in
 1) echo "enter numbers to add"
    read num
       sum=0
    for i in $num 
    do
    sum=`expr $sum + $i`
    done
     echo "sum of given nos is $sum"
     ;;
 2) echo "enter numbers to substract"
    echo "enter 1st num"
          read num1
    echo "enter 2nd num"
          read num2
    if [ $num1 -gt $num2 ]
       then
       sum=`expr $num1 - $num2`
      else
       sum=`expr $num2 - $num1`
      fi
       echo "substratinon of given num is $sum"
      ;;
3) echo "enter numbers to multiplay"
   read num
   sum=1
   for i in $num
   do 
   sum=`expr $sum \* $i`
   done
    echo "maltiplication of given nos is $sum"
     ;;
4) echo "enter number to devide"
   echo "enter 1st num"
    read num1
   echo "enter 2nd num"
    read num2
  if [ $num1 -gt $num2 ]
     then
    sum=`expr $num1 / $num2`
      else
    sum=`expr $num2 / $num1`
     fi
 echo "division of given nos is $sum"
    ;;
5) echo "you got exited"
    ;;
 esac   
   




