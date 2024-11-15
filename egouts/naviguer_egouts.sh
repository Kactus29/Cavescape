
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

# Fonction pour vérifier si le processus bloquant est tué
verifier_processus_bloquant() {
    if ps -p $(cat processus_bloquant.pid) > /dev/null 2>&1; then
        echo "Le processus bloquant est toujours en cours d'exécution. Vous devez le tuer pour sortir."
        return 1
    else
        echo "Le processus bloquant a été tué. Vous pouvez maintenant sortir."
        return 0
    fi
}

# Début du jeu
current_path="egouts/entree"
lire_description $current_path

while true; do
    read -p "Choisissez une direction (gauche, droite, centre, culdesac1, culdesac2, fin) ou tapez 'quitter' pour arrêter : " direction

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
        culdesac1)
            current_path="egouts/culdesac1"
            lire_description $current_path
            ;;
        culdesac2)
            current_path="egouts/culdesac2"
            lire_description $current_path
            ;;
        fin)
            if [[ $current_path == "egouts/droite" ]]; then
                verifier_processus_bloquant
                if [[ $? -eq 0 ]]; then
                    current_path="egouts/fin"
                    lire_description $current_path
                    break
                fi
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
