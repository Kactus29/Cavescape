
#!/bin/bash

# Afficher les processus en cours d'exécution utilisant la commande ps aux
echo "Vérification des processus en cours..."
ps aux | grep processus_bloquant.sh | grep -v grep

# Demander à l'utilisateur de tuer un processus spécifique en utilisant son PID
read -p "Entrez le PID du processus bloquant à tuer ou tapez 'quitter' : " pid

# Si l'utilisateur entre 'quitter', le script s'arrête, sinon il tue le processus spécifié
if [[ "$pid" != "quitter" ]]; then
    kill $pid
    echo "Processus $pid tué."
else
    echo "Aucun processus tué."
fi
