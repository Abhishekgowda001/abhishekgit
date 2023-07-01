#!/bin/bash

echo "enter the name to check"
read name

if [ -f $name ]
then
echo "$name is file"
elif [ -d $name ]
then
echo "$name is directory"
elif [ -l $name ]
then
echo "$name is link"
else
echo "$name not exist"
fi
