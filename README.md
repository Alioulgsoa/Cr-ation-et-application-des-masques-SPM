# Cr-ation-et-application-des-masques-SPM
Dans la troisième partie on va utiliser une segmentation qui permet de rassembler les deux types de segmentation a priori et sans a priori,  

Étape 1 : Segmenter les images des cerveaux Avec boite crânienne avec SPM12 new segment qui permet de segmenter le cerveau sur 6 parties : substance grise, de la substance blanche et du LCS, le crâne, les tissus mous et une catégorie « autre ». 

Étape 2 : Convertir les parties C4, C5 et C6 segmente par SPM12 sous forme d’un masque avec C4 : le crâne, C5 : les tissus mous et C6 : catégorie « autre ». 

Étape 3 : J’applique le masque que j’ai créé dans l’étape 2 sur l’image que je veux segmenter.  

Étape 4 : Segmenter les images sorties de l’étape 3 par l’algorithme MICO.

le programme permet de faire l'etape 2 et 3 de la methode utiliser dans l'experiance 3
