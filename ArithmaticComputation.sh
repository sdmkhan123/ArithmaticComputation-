#! /bin/bash -x

read a
read b
read c
num1=$(echo $a $b $c | awk '{ print $1 + $2 * $3 }' )
