#!/bin/bash

num=1
rm even_file odd_file
while read line
do
 status=`expr $num % 2`
   if [ $status -eq 0 ]
   then
   echo "$num : $line" >> even_file
  else
   echo "$num : $line" >> odd_file
  fi
 num=`expr $num + 1`
 done < $1
