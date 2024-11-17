#!/bin/bash

# Vérification de la complétion du jeu
if [ -f "cave/couloir/serrure/clé_rouillée" ]; then
  echo "Vous avez trouvé la bonne clé ! Vous pouvez vous échapper.
Vous vous réveillez en sursaut, mais tout va bien. Vous êtes en sécurité."
  # Réinitialisation
  pkill -f actualiser_compte_à_rebours
  rm -rf cave
else
  echo "Mauvaise clé ! Continuez à chercher."
fi

