
#!/bin/bash

# Fonction pour lire la description d'un répertoire
lire_description() {
    local dossier=$1
    if [[ -f "$dossier/description.txt" ]]; then
        cat "$dossier/description.txt"
    else
        echo "Rien d'intéressant ici."
    fi
}

# Début du jeu
current_path="egouts/entree"
lire_description $current_path

while true; do
    read -p "Choisissez une direction (gauche, droite, centre, culdesac, fin) ou tapez 'quitter' pour arrêter : " direction

    case $direction in
        gauche)
            current_path="egouts/gauche"
            lire_description $current_path
            ;;
        droite)
            current_path="egouts/droite"
            lire_description $current_path
            ;;
        centre)
            current_path="egouts/centre"
            lire_description $current_path
            ;;
        culdesac)
            current_path="egouts/culdesac"
            lire_description $current_path
            ;;
        fin)
            if [[ $current_path == "egouts/droite" ]]; then
                current_path="egouts/fin"
                lire_description $current_path
                break
            else
                echo "Vous ne pouvez pas aller à la fin directement. Explorez d'abord les autres chemins."
            fi
            ;;
        quitter)
            echo "Merci d'avoir joué. À bientôt !"
            break
            ;;
        *)
            echo "Direction inconnue."
            ;;
    esac
done
