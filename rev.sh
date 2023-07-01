#!/bin/bash

lines=`cat $1 | wc -l
while [ $lines -gt 0 ]
do
	head -$lines | tail -1
	lines=`expe $lines - 1`
done<$2
