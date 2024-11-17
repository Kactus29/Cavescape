#!/bin/bash

# Histoire de fin où on meurt d'une crise cardiaque dans notre sommeil
echo "Vous sentez une douleur intense dans votre poitrine.
Votre vision se trouble et vous tombez à genoux.
Vous essayez de crier, mais aucun son ne sort de votre bouche.
Vous sentez votre cœur battre de plus en plus vite, puis s'arrêter brusquement.
Tout devient noir..."
sleep 3
echo "Vous êtes mort par crise cardiaque, laissant vos proches dans un désespoir complet.
Peut-être ferez-vous mieux dans votre prochaine vie ?"
# Réinitialisation
pkill -f actualiser_compte_à_rebours
rm -rf cave
