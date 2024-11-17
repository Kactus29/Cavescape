# Cave'scape
Vous vous réveillez en sursaut.
Votre cœur bat à tout rompre.
Vous êtes dans une cave sombre et humide.
Des murs de pierre froids vous entourent.
L'odeur persistante de la moisissure vous enveloppe.
Vous ne savez pas comment vous êtes arrivé ici.
Mais vous savez que vous devez sortir.
Des bruits étranges résonnent au loin.
Quelque chose ou quelqu'un vous observe.
Vous devez agir vite.
Le temps presse.
Vous avez 30 minutes pour trouver la clé.
Celle qui déverrouillera la serrure et vous permettra de vous échapper.
Bonne chance...

## Comment installer le jeu ?
Pour commencer votre aventure, préparez votre environnement.
Ouvrez votre terminal.
Clonez le dépôt GitHub avec la commande suivante :

git clone https://github.com/Kactus29/Cavescape.git

Attention !!! Une fois dans le jeu, ne cherchez pas à accéder au contenu des fichiers de gestion, au risque de perdre tout intérêt au jeu.

Accédez au répertoire du jeu :

cd Cavescape

Donnez les permissions nécessaires aux scripts.
Utilisez la commande chmod pour les rendre exécutables :

chmod 777 dormir.sh se_suicider.sh lire_graffitis.sh lire_heure.sh tourner_clef.sh

Maintenant, lancez le jeu.
Exécutez le script dormir.sh pour générer l'environnement de la cave et lancer le compte à rebours :

./dormir.sh

## Comment jouer ?
Vous vous retrouvez dans le couloir d'accès.
C'est le point de départ et la sortie.
Explorez les différentes zones de la cave pour trouver la clé.
Chaque zone contient des indices et des objets qui peuvent vous aider à résoudre les énigmes.
    Petit Atelier : Contient des outils et des étagères.
    Home Cinema : Salle de cinéma avec grand écran et fauteuils.
    Spa : Espace de détente avec jaccuzi et sauna.
    Cave à Vin : Stockage de vin avec racks et tonneaux.
    Coin Muscu : Salle de sport avec haltères et vélos elliptiques.
    Buanderie : Espace de lavage avec machines à laver et sèche-linge.

Votre objectif est de trouver la bonne clé et de la placer dans la serrure du couloir.
Utilisez les commandes utiles pour naviguer dans le jeu et vérifier votre progression :
    dormir.sh : Génère l'environnement de la cave et lance le compte à rebours.
    se_suicider.sh : Réinitialise le jeu avec une fin tragique.
    lire_graffitis.sh : Affiche la liste des commandes utiles pour le jeu.
    lire_heure.sh : Affiche le temps restant.
    tourner_clef.sh : Vérifie si la bonne clé est insérée.

Conseils et astuces pour survivre :
    Explorez chaque zone minutieusement : Chaque zone contient des indices et des objets qui peuvent vous aider à résoudre les énigmes.
    Utilisez les commandes utiles : Les scripts fournis vous aideront à naviguer dans le jeu et à vérifier votre progression.
    Gérez votre temps : Le compte à rebours est réel. Utilisez lire_heure.sh pour vérifier le temps restant et planifiez vos actions en conséquence.
    Soyez méthodique : Notez les indices et les objets que vous trouvez. Cela vous aidera à résoudre les énigmes plus rapidement.

Amusez-vous bien dans Cave'scape et bonne chance pour votre évasion !
