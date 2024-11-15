
#!/bin/bash

indices=(
    "Utilisez 'ls' pour lister les lieux et objets."
    "Utilisez 'cat' pour lire les descriptions des objets et des fichiers."
    "Si un objet est bloqué, utilisez 'ps' pour voir les processus actifs, puis 'kill <PID>' pour les arrêter."
    "La clé correcte est décrite dans l'un des fichiers."
    "Le code correct se cache aussi parmi les fichiers."
)

echo "Êtes-vous sûr de vouloir un indice ? Cela réduit le défi ! (oui/non)"
read confirmation

if [[ "$confirmation" == "oui" ]]; then
    random_index=$((RANDOM % ${#indices[@]}))
    echo "Indice : ${indices[random_index]}"
else
    echo "Très bien, continuez à chercher par vous-même. Bonne chance !"
fi
