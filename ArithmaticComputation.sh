#! /bin/bash -x

read a
read b
read c
num1=$(echo $a $b $c | awk '{ print $1 + $2 * $3 }' )
num2=$(echo $a $b $c | awk '{ print $1 * $2 + $3 }' )
echo "computation one two and three are :" $num1 $num2 $num3
