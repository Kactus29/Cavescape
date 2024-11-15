
#!/bin/bash

# Lire l'indice du fichier et utiliser la commande export pour définir une variable d'environnement
source egouts/entree/indice.txt

# Vérifier si la variable d'environnement CHEMIN_CLE est définie
if [[ -z "$CHEMIN_CLE" ]]; then
    echo "Aucun chemin pour la clé n'est défini."
else
    echo "Le chemin pour la clé est défini dans \$CHEMIN_CLE : $CHEMIN_CLE"
    echo "Vous devez naviguer vers ce chemin pour trouver la clé."
fi
