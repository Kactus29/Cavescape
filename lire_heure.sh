#!/bin/bash

# Affichage du temps restant
if [ -f "cave/compte_à_rebours" ]; then
  cat cave/compte_à_rebours
else
  echo "Le compte à rebours n'a pas encore commencé."
fi

