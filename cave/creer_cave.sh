
#!/bin/bash

# Affichage de la mise en situation
echo "Vous êtes tombé dans une cave sombre et mystérieuse."
echo "Autour de vous, des lieux encombrés d'objets divers."
echo "Votre mission : trouver la bonne clé et le bon code pour sortir."

# Création de la structure
echo "Génération de la cave..."
mkdir -p cave

# Banques d'éléments
lieux=("etageres" "coffre" "coffre_fort" "piles" "coin1" "coin2")
objets=("bouteille" "vieux_outil" "boite_vide" "journal" "vieux_livre" "rouage")
descriptions=(
    "Une bouteille poussiéreuse remplie de liquide inconnu."
    "Un outil rouillé abandonné ici depuis des années."
    "Une boîte vide couverte de toiles d'araignée."
    "Un vieux journal déchiré. Quelques pages sont lisibles."
    "Un livre ancien avec des notes manuscrites."
    "Un rouage métallique brisé."
)

# Création aléatoire des lieux, objets et descriptions
cle_correcte=""
code_correct=""

# Générer des lieux et objets
for lieu in "${lieux[@]}"; do
    mkdir -p "cave/$lieu"
    objets_choisis=("${objets[@]}")
    for i in $(seq 1 $((RANDOM % 3 + 1))); do
        index_objet=$((RANDOM % ${#objets_choisis[@]}))
        objet="${objets_choisis[index_objet]}"
        description="${descriptions[index_objet]}"
        echo "$description" > "cave/$lieu/$objet.txt"
        objets_choisis=("${objets_choisis[@]:0:$index_objet}" "${objets_choisis[@]:$((index_objet + 1))}")
    done
done

# Placer les clés et choisir la bonne
total_cles=$((RANDOM % 3 + 3))
cles=("clé_rouillée" "clé_d'argent" "clé_d'or" "clé_massive" "clé_minuscule")
for i in $(seq 1 $total_cles); do
    lieu_cle="${lieux[RANDOM % ${#lieux[@]}]}"
    cle="${cles[RANDOM % ${#cles[@]}]}"
    echo "Une $cle est ici." > "cave/$lieu_cle/$cle.txt"
    if [[ -z "$cle_correcte" ]]; then
        cle_correcte="$cle"
    fi
done

# Placer les codes et choisir le bon
total_codes=$((RANDOM % 3 + 3))
for i in $(seq 1 $total_codes); do
    lieu_code="${lieux[RANDOM % ${#lieux[@]}]}"
    code=$((RANDOM % 9000 + 1000))
    echo "Code : $code" > "cave/$lieu_code/code_$code.txt"
    if [[ -z "$code_correct" ]]; then
        code_correct="$code"
    fi
done

# Bloquer des objets par des processus
touch cave/coffre/verrou_process.txt
echo "Processus verrouillé, utilisez 'ps' et 'kill' pour libérer cet objet." > cave/coffre/verrou_process.txt &

echo "La cave est prête. Bonne chance !"
