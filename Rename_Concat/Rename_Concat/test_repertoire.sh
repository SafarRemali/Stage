#!/bin/bash
i=1
mkdir newrep
for fichiers in tests_smt/*
do
    python3 rename_variable.py $fichiers g_cardPini p$i #g_cadPini etant la variable a renomer dans chaque fichier du répertoire tests_smt
    i=$(($i + 1))
done

k=kinit.smt2 #contrainte initiale qui vaut TRUE
#echo $k
for e in newrep/*
do
    python3 concat.py $k $e $k #le resultat se trouve dans le fichier kinit.smt2

done