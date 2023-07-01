#!/bin/bash

num=0
for i in $*
 do 
 num=`expr $num + $i`
done
  echo "$num"
