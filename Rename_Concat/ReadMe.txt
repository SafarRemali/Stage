Renommer une variable dans un fichier .smt2 :
	rename_variable.py <file.smt2> <var> <new_var> remplace <var> par <new_var> dans le fichier passé en argument 

Concatener 2 fichier .smt2 :
	concat.py <file1.smt2> <file2.smt2> <dest.smt2> concatène les deux fichier <file1.smt2> <file2.smt2> dans le fichier <dest.smt2>


test_repertoire.sh automatise le renommage et la concaténation des fichiers du répertoire tests_smt
	le répertoire newrep contient les fichier .smt2 avec les variables renommer 
 