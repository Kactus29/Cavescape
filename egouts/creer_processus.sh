
#!/bin/bash

# Créer un script pour le processus bloquant
echo '#!/bin/bash
while true; do
    echo "Je bloque la sortie ! PID: $$"
    sleep 10
done' > processus_bloquant.sh

# Rendre le script exécutable
chmod +x processus_bloquant.sh

# Démarrer le processus en arrière-plan
./processus_bloquant.sh &
echo $! > processus_bloquant.pid

# Indiquer à l'utilisateur quel processus doit être tué
echo "Le processus bloquant a été démarré. Vous devez le tuer pour pouvoir sortir."
