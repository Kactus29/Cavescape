
#!/bin/bash

# Vérifier que la clé correcte est dans la serrure
if [[ -f cave/serrure/$cle_correcte.txt ]]; then
    echo "Vous avez inséré la bonne clé dans la serrure."
    
    # Demander le code
    echo "Entrez le code pour tourner la clé :"
    read code

    if [[ "$code" == "$code_correct" ]]; then
        echo "Le code est correct. La clé tourne dans la serrure et la porte s'ouvre. Vous êtes libre !"
    else
        echo "Le code est incorrect. La porte reste fermée."
    fi
else
    echo "Il semble que vous n'avez pas inséré la bonne clé dans la serrure."
fi
