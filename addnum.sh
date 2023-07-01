#!/bin/bash

num=0

while [ $num -le $1 ]
do
echo "$num"
num=`expr $num + 1`
done

