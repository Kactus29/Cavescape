
#!/bin/bash

# Création de la structure de dossiers de la cave
mkdir -p cave/etageres cave/coffre cave/coins/coin1 cave/coins/coin2 cave/serrure

# Création de fichiers descriptifs
echo "Un vieux coffre poussiéreux." > cave/coffre/description.txt
echo "Une étagère pleine de vieilles bouteilles vides." > cave/etageres/description.txt
echo "Une pile de vieilles boîtes et des outils rouillés." > cave/coins/coin1/description.txt
echo "Un coin sombre avec des toiles d'araignée." > cave/coins/coin2/description.txt

# Création de faux objets pour cacher la clé
touch cave/etageres/bouteille1.txt
touch cave/etageres/bouteille2.txt
touch cave/coffre/vieux_cadenas.txt
touch cave/coins/coin1/boite_vide.txt
touch cave/coins/coin1/vieux_outil.txt

# Placer la clé dans un endroit caché
echo "Une petite clé rouillée." > cave/coins/coin2/cle.txt
