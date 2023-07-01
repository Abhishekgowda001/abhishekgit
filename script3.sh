#!/bin/bash

if [ $1 -lt $2 ]
then
  echo "$1 is lesser"
else
  echo "$2 is lesser"
fi
if [ $1 -eq $2 ]
then
 echo "$1 is equal to $2"
fi  

