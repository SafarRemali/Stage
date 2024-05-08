#!/bin/sh

/usr/local/bin/stp --SMTLIB2 --disable-simplifications --output-CNF --exit-after-CNF  $1  
cat output_0.cnf

