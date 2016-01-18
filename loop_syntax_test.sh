#!/bin/bash
# Test Program
# Shell program to display numbers from 1 to 10 using different loops
# This script is not my own creation and is being used just for later referencing
# Copyright (c) 2005 nixCraft project <http://cyberciti.biz/fb/>


# method 1

for i in 1 2 3 4 5 6 7 8 9 10
do
  echo -n "$i " 
done
echo ""


# method 2

for (( i=1; i<=10; i++ ))
do
   echo -n "$i "
done
echo ""


# method 3

j=1
while [ $j -le 10 ]
do
   echo -n "$j "
   j=$(( j + 1 )) # increase number by 1 
done
echo ""