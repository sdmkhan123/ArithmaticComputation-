#! /bin/bash -x
declare -A dictionary
read a
read b
read c
num1=$(echo $a $b $c | awk '{ print $1 + $2 * $3 }' )
num2=$(echo $a $b $c | awk '{ print $1 * $2 + $3 }' )
num3=$(echo $a $b $c | awk '{ print $3 + $1 / $2 }' )
num4=$(echo $a $b $c | awk '{ print $1 % $2 + $3 }' )
dictionary[0]=$num1
dictionary[1]=$num2
dictionary[2]=$num3
dictionary[4]=$num4
echo "computation values:" ${dictionary[*]}
