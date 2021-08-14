#! /bin/bash -x

read a
read b
read c
num1=$(echo $a $b $c | awk '{ print $1 + $2 * $3 }' )
num2=$(echo $a $b $c | awk '{ print $1 * $2 + $3 }' )
num3=$(echo $a $b $c | awk '{ print $3 + $1 / $2 }' )
# echo "$num1 and $num2 $num3"
