
#!/bin/bash

# Création de la structure des égouts avec plus de chemins
mkdir -p egouts/entree egouts/gauche egouts/droite egouts/centre egouts/fin egouts/culdesac1 egouts/culdesac2

# Création de fichiers descriptifs
echo "Vous êtes à l'entrée des égouts. Allez-vous à gauche, à droite ou au centre ?" > egouts/entree/description.txt
echo "Vous avez choisi la gauche, mais c'est un cul-de-sac. Retournez à l'entrée." > egouts/gauche/description.txt
echo "Vous avez choisi la droite et trouvez une porte menant plus loin." > egouts/droite/description.txt
echo "Vous avez choisi le centre et vous trouvez à une intersection." > egouts/centre/description.txt
echo "Vous avez atteint la fin des égouts. Un nouvel environnement vous attend." > egouts/fin/description.txt
echo "Vous avez pris un mauvais chemin et êtes dans un cul-de-sac." > egouts/culdesac1/description.txt
echo "Vous avez pris un autre mauvais chemin et êtes dans un cul-de-sac." > egouts/culdesac2/description.txt

# Création de faux indices
echo "Un indice se trouve ici : export CHEMIN_CLE='egouts/droite'" > egouts/entree/indice.txt
