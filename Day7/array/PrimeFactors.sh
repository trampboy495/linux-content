#!/bin/bash -x
echo "input the number to find factors"
read n
temp=$n
counter=0
n1=2
echo "the prime factors"
for (( i=2; i*i<=n; i++ ))
do
        if [ `expr $temp % $n1` -ne 0 ]
        then
                ((n1++))
                continue
        fi
        if [ `expr $temp % $n1` -eq 0 ]
        then
                factors[ ((counter++)) ]=$n1
                temp=$(($temp / $n1))
        fi
done
factors[ ((counter++)) ]=$temp
echo ${factors[@]}


