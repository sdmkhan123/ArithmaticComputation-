#! /bin/bash -x
declare -a arr
declare -A dictionary
read a
read b
read c
num1=$(echo $a $b $c | awk '{ print $1 + $2 * $3 }')
num2=$(echo $a $b $c | awk '{ print $1 * $2 + $3 }')
num3=$(echo $a $b $c | awk '{ print $3 + $1 / $2 }')
num4=$(echo $a $b $c | awk '{ print $1 % $2 + $3 }')
dictionary[0]=$num1
dictionary[1]=$num2
dictionary[2]=$num3
dictionary[3]=$num3
#float to int conversion
#dictionary[0]=${num1%.*}
#dictionary[1]=${num2%.*}
#dictionary[2]=${num3%.*}
#dictionary[3]=${num4%.*}

for (( i=0; i<4; i++ ))
do
	arr[$i]=${dictionary[$i]}
done
for (( i=0; i<4; i++ ))
do
	for(( j= 0; j<4-i-1; j++ ))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
echo ${arr[*]}
echo ${dictionary[*]}
