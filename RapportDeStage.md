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
Il fait ça en déplaçant une sonde de mesure sur un axe X et un axe Y.
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
Ne connaissant pas LabVIEW, j'ai passé les premiers jours à apprendre les bases de ce language.
C'est un language graphique, qui fonctionne par l'intermédiaire de blocs. Chaque bloc effectue une opération, et les blocs transmettent les données entre eux avec des fils.
[[photo d'un programme labview]]

