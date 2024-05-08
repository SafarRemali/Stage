Example de model counting pour le script verifPin.c
	klee-out-1 repertoire fourni par klee
	fncf1 est la conversion des fichiers .smt2 en format cnf (fourni par stp)
	modelModel0.txt est le nombre de model de chaque fichier .cnf écrit un par ligne (fourni par approxmc)

Le script automatisation.sh prend en argument un repertoire klee-out-N et genere un repertoire fcnfN et un fichier nbModelN.txt
	