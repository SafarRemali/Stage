#!/bin/bash
N=$(basename $1 | cut -f5 )
for i in $1/* 
do
    ./script_approxmc.sh $i | tail -n1 | cut -d' ' -f3 >> nbModel$N.txt
done