#!/bin/bash

# Vérification de la présence de la clé dans le dossier serrure
if [[ -f cave/serrure/cle.txt ]]; then
    echo "Vous avez inséré la clé dans la serrure."
    
    # Activation de la clé pour ouvrir la porte
    echo "Tournez la clé pour ouvrir la porte."
    read -p "Tapez 'tourner' pour tourner la clé : " action

    if [[ "$action" == "tourner" ]]; then
        echo "La clé tourne et la porte de la cave s'ouvre ! Vous êtes libre."
    else
        echo "Vous n'avez pas tourné la clé correctement. La porte reste fermée."
    fi
else
    echo "Il semble que la clé n'est pas dans la serrure. Déplacez la clé dans 'cave/serrure' pour la tourner."
fi