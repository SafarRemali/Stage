#!/bin/bash
N=$(basename $1 | cut -d'-' -f3)
mkdir fcnf$N
for i in $1/*.smt2 
do
    name=$(basename $i | cut -d'.' -f1)
    cat $i | docker run --rm -i -a stdin -a stdout stp > fcnf$N/$name.cnf
done
    
for j in fcnf$N/* 
do
    ./script_approxmc.sh $j | tail -n1 | cut -d' ' -f3 >> nbModel$N.txt
done