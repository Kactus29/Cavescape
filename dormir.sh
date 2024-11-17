#!/bin/bash

# Mise en situation
echo "Vous vous réveillez en sursaut, le cœur battant à tout rompre.
Vous êtes dans une cave sombre et humide, entouré de murs de pierre froids et de l'odeur persistante de la moisissure.
Vous ne savez pas comment vous êtes arrivé ici, mais vous savez que vous devez sortir.
Vous entendez des bruits étranges au loin, comme si quelque chose ou quelqu'un vous observait.
Vous devez agir vite, car le temps presse.
Vous avez 30 minutes pour trouver la clé qui déverrouillera la serrure et vous permettra de vous échapper.
Bonne chance..."

# Génération des dossiers
mkdir -p cave/{couloir,petit_atelier,home_cinema,spa,cave_a_vin,coin_muscu,buanderie}

# Génération des sous-dossiers et fichiers txt
declare -A zones=(
  [couloir]="étagère armoire serrure escalier porte_principale"
  [petit_atelier]="établi lot_outils scie marteau tournevis"
  [home_cinema]="grand_écran fauteuil projecteur lecteur_blu_ray enceintes"
  [spa]="jaccuzi sauna douche bain_à_remous serviettes"
  [cave_a_vin]="rack_à_vin tonneau bouteille verres tire_bouchon"
  [coin_muscu]="haltère vélo_elliptique tapis_de_course banc_de_musculation poids"
  [buanderie]="machine_à_laver sèche_linge panier_à_linge fer_à_repasser table_à_repasser"
)

# Génération des descriptions
declare -A objets=(
  [étagère]="livre_de_cuisine livre_de_jardinage livre_de_bricolage"
  [armoire]="vêtements chaussures chapeaux"
  [serrure]="description"
  [escalier]="marches rampe balustrade"
  [porte_principale]="poignée verrou judas"
  [établi]="scie_à_métaux clous vis"
  [lot_outils]="clé_rouillée tournevis_cruciforme pince"
  [scie]="lame poignée étau"
  [marteau]="manche tête clous"
  [tournevis]="manche lame vis"
  [grand_écran]="télécommande câbles prise"
  [fauteuil]="mégots popcorn coussin"
  [projecteur]="lentille câble alimentation"
  [lecteur_blu_ray]="disque télécommande câbles"
  [enceintes]="câble alimentation bouton_volume"
  [jaccuzi]="clé_argentée jets bouton_marche"
  [sauna]="pierre_chaude seau_d_eau thermomètre"
  [douche]="pommeau_de_douche rideau savon"
  [bain_à_remous]="jets bouton_marche savon"
  [serviettes]="serviette_de_bain serviette_de_visage gant_de_toilette"
  [rack_à_vin]="bouteille_de_vin verre_à_vin tire_bouchon"
  [tonneau]="robinet bouchon clé_dorée"
  [bouteille]="étiquette bouchon clé_minuscule"
  [verres]="verre_à_vin verre_à_eau verre_à_whisky"
  [tire_bouchon]="manche vis poignée"
  [haltère]="disque barre poids"
  [vélo_elliptique]="pédales guidon écran"
  [tapis_de_course]="bouton_marche bouton_arrêt écran"
  [banc_de_musculation]="coussin barre poids"
  [poids]="disque barre haltère"
  [machine_à_laver]="bouton_marche bouton_arrêt tambour"
  [sèche_linge]="bouton_marche bouton_arrêt tambour"
  [panier_à_linge]="vêtements serviettes chaussettes"
  [fer_à_repasser]="câble bouton_marche semelle"
  [table_à_repasser]="planche housse fer_à_repasser"
)

#Génération de la cave
for zone in "${!zones[@]}"; do
  for lieu in ${zones[$zone]}; do
    mkdir -p "cave/$zone/$lieu"
    for objet in ${objets[$lieu]}; do
      echo "Description de $objet dans $lieu" > "cave/$zone/$lieu/$objet"
    done
  done
done

# Ajouts des pare-feux de protection
tar -czf serrure.tar cave/couloir/serrure
echo "Je suis vieille et usée, mais même rouillée je peux encore servir." > cave/couloir/serrure/description
chmod 000 cave/couloir/serrure/description

# Ajout du compte à rebours
echo "30 minutes" > cave/compte_à_rebours

# Actualisation du compte à rebours
function actualiser_compte_à_rebours() {
  local temps_restant=30
  while [ $temps_restant -gt 0 ]; do
    echo "$temps_restant minutes" > cave/compte_à_rebours
    temps_restant=$((temps_restant - 1))
    sleep 60
  done
  echo "Temps écoulé ! Vous avez perdu."
  ./se_suicider.sh
}

# Lancement du compte à rebours
actualiser_compte_à_rebours &

