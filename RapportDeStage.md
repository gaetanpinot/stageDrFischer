## Sujet de stage
Programmation d'un logiciel de mesure d'irradiance(Flux Lumineux par unité de surface $W/m^2$) suite à une mise à jour matérielle.
## Présentation de l'entreprise
DR.FISCHER Europe est une société de développement et de fabrication de luminaire basée à Pont-à-Mousson. C'est une usine de DR.FISCHER GROUP qui produit des lampes Infrarouges, UV, Halogènes, LED et dans certains cas le système du luminaire complet incluant les réflecteurs.  
Le département Qualité dans lequel j'ai effectué mon stage a, entre autres, pour but de s'assurer de la qualité des lampes produites.
Dans ce cadre ils sont amenées à utiliser des appareils de mesure pour vérifier la conformité des lampes produites.

## Objectif du stage

Dans le cadre de sa mission, le département Qualité fait des prélèvements de lampes en production et les teste sur différents aspects, notamment l'irradiance de ces lampes.
Ce qui est effectuée par le Banc de mesure XY.
Ce Banc mesure l'irradiance de la lampe sur un quadrillage de points.
Il fait ça en déplaçant une cellule de mesure sur un axe X et un axe Y.
Les deux axes sont contrôlés par des moteurs pas à pas, qui sont branchés à un contrôleur.
Le contrôleur est branché à un ordinateur, sur lequel un programme LabVIEW interne à l'entreprise, envoie les commandes de déplacement.

[[Photo du banc XY]]
En 2022 le contrôleur du Banc cesse de fonctionner.
Il est remplacé par un nouveau contrôleur qui n'est plus compatible avec l'ancien programme LabVIEW.
L'opérateur devais alors entrer manuellement les coordonnées dans le contrôleur, et lire les valeurs de l'irradiance sur l'ordinateur pour chaque point du quadrillage.
Cela prend beaucoup de temps.
Mon but est de faire à nouveau fonctionner le Banc de mesure XY.


## Travail effectué

### Banc XY

L'ancien programme LabVIEW, qui date de 2008, possède plusieurs fonctionnalités qui ne sont plus nécessaire.
J'ai trouver plus cohérent de repartir de zéro.
Le choix de LabVIEW découle du fait que c'est le seul language de programmation que quelqu'un dans l'usine maîtrise, et de ce fais peut maintenir et modifier les programmes.
Ne connaissant pas LabVIEW, j'ai passé les premiers jours à apprendre les bases de ce language (conditions, boucles, structures de données, fonctions etc...).
C'est un language graphique, qui fonctionne par l'intermédiaire de blocs. Chaque bloc effectue une opération, et les blocs transmettent les données entre eux avec des fils.
[[photo d'un programme LabVIEW]]  

Une fois des connaissances de base acquises, je cherche comment communiquer avec le nouveau contrôleur.
C'est un NewPort ESP302, il se branche en série sur l'ordinateur et communique avec le protocole RS232.
Il reçoit des mots de commandes tels que `1PA100` pour déplacer l'axe 1 de 100mm.
En premier lieu je réussi à envoyer des commandes depuis NI MAX, un utilitaire de LabVIEW.
Il permet d'établir une communication sans avoir quelque chose à programmer, c'est donc pratique pour verifier que des paramètres fonctionne réellement.
Ensuite j'essaie de faire la même chose depuis un programme LabVIEW.
Après m'être rendu compte que les constantes de chaines de caractères en LabVIEW ne supporte pas par défaut les caractères échappées (`\r`), j'ai réussi à envoyer des commandes au contrôleur.

Entre temps Alain, la personne chargée de faire des mesures avec le Banc actuellement, ma montré une mesure d'irradiance, actuellement Alain affiche la tension de la cellule de mesure en temps réel sur l'ordinateur, entre les coordonnées dans le contrôleur pour qu'il déplace la cellule, et retient tension maximale qu'il voit à l'écran, la note, et recommence pour chaque point du quadrillage ou de la croix.  
J'en ai profité pour poser des questions sur le fonctionnement du banc, et sur les besoins pour le nouveau programme.
Il m'a montré les résultats de mesure de l'ancien programme, pour que je puisse les reproduire dans le nouveau.  

Par la suite je commence à noter les choses basique que doivent faire mon programme:
- Se déplacer en quadrillage ou en croix
- Mesurer une tension de la cellule de mesure et la convertir en irradiance
- Stocker les valeurs dans un fichier tableur

Je commence par faire un programme qui se déplace en zig zag sur un quadrillage de points.  

A ce moment je me rend compte que si je veux faire une mesure précise, je doit attendre que les moteurs se soit arrêtés avant de mesurer la tension.
Je commence à essayer de trouver une solution pour savoir quand les moteurs sont arrêtés.
Le contrôleur ne renvoie pas de message pour dire qu'il a fini de bouger.
Je me rabat sur la deuxième meilleur chose, je demande au contrôleur de m'envoyer son status après que le dernier axe ait fini de bouger.
La structure de l'instruction devient donc `1PAy;1WS;2PAx;2WS;TS?\r` ou :
- `PA` est une instruction de déplacement de coordonnées absolues de l'axe dont le nombre est situé avant
- `x` et `y` sont les coordonnées ou l'axe doit se déplacer
- `WS` demande d'attendre que l'axe dont le nombre est situé avant ait fini de bouger avant de passer à la commande suivante
- `TS?` demande le status du contrôleur, le résultat n'est pas significatif car je m'en sert juste comme indicateur de fin de commande

