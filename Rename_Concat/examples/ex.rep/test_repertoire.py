from os import walk
listeFichiers = []
for (repertoire, sousRepertoires, fichiers) in walk(Examples):
    listeFichiers.extend(fichiers)

print(listeFichiers)
