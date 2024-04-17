# Documentation utilisateur du Banc XY  
  
Le logiciel du Banc XY permet de :  
  
- Déplacer la cellule de mesure 
- Mettre le zero 
- Aller au zero 
- Choisir des dimensions de mesures, une cellule, lancer la mesure et obtenir les résultat sous la forme d'un fichier tableur 
  
  
## Étapes de déroulement normal d'une mesure d'irradiance  
  
### Étape 1  
- Allumez l'armoire électrique de gauche pour alimenter le banc (interrupteur `MISE SOUS TENSION INSTRUMENTATION`) 
- Assurez vous que le contrôleur Newport est allumé, sinon il y a un interrupteur à l'arrière au dessus de la prise d'alimentation 
- Assurez vous que le WT200 est allumé. 
- Allumez le PC 
- Ouvrez le logiciel BancXY 
  
### Étape 2  
- Mettez en place et branchez le luminaire à mesurer 
- Mettez en place la cellule de mesure d'irradiance adéquate au luminaire, ne pas oublier de brancher les tuyaux de refroidissement 
- Ajustez la hauteur du luminaire 
- Ajustez la position de la cellule a l'aide des boutons de déplacements flèches dans l'onglet `Controles` dans le logiciel BancXY 
- Quand le luminaire est bien centrée sur la cellule, appuyez sur le bouton `Mettre le zero à cette position` 
  
### Étape 3  
- Allumez le refroidissement de la cellule 
- Vérifiez l'absence de fuite de liquide de refroidissement 
- Cliquez le bouton `Voir la tension en temps réel` pour voir la tension de la cellule 
- Allumez le luminaire l'aide de l'armoire électrique de droite 
- Vérifiez que la tension de la cellule ne dépasse pas la pleine échelle (~10mV) 
- Si la tension dépasse la pleine échelle, éteignez le luminaire et changez la cellule pour une cellule avec une plage de mesure plus grande 
  
### Étape 4  
- Attendez (15 à 20 minutes) que la tension et la temperature se stabilise (~20/21°C) 
- Sur l'onglet `Informations de la mesure` renseignez les informations nécessaires, n'oubliez pas de changer le n° de la cellule pour que les bonnes valeurs d'irradiance soient enregistrées 
- Sur l'onglet `Distance de mesure` renseignez les distances de mesure, le logiciel ajuste automatiquement les distances de mesure pour toujours passer par les coordonnées 0,0 
- Appuyez sur le bouton `Calculer` et vérifiez le nombre de points et les distances ajustées. 
  
#### ATTENTION  
__Si vous rentrez des dimensions trop grandes ou que le zero et fait trop proche du bord, le chariot va atteindre les bord et l'ESP302 arrêtera le moteur (normalement le programme affichera une erreur) et le reste de la mesure sera mauvaise__  
	Dans ce cas il faut arreter le programme, redemarrer le programme, repositionner la cellule au zero, ajuster les dimensions de mesures et la position du zero pour eviter que le chariot atteigne les bords.  
  
### Étape 5  
- Quand tout est prêt, cliquez sur le bouton `Lancer la mesure`  dans l'onglet `Controles` 
- Choisissez le nom et l'emplacement du fichier de mesure et cliquez sur `Enregistrer le fichier de mesure` __ATTENTION la mesure se lance immédiatement après avoir cliqué sur `Enregistrer le fichier de mesure`__
- La barre de progression et le graphe d'irradiance indique l'avancement de la mesure 
- Les graphes de tension, d'intensité et de puissance indique en temps réel l'alimentation du luminaire et peuvent indiquer une variation de l'alimentation 
- A la fin de la mesure vérifiez le fichier de mesure pour s'assurer que les valeurs sont cohérentes 
  
Le fichier de mesure est enregistré au format `.xls`, quand on l'ouvre avec Excel ou LibreOffice Calc, il est demandé de choisir la manière de l'ouvrir, choisissez mode de séparateur `Tabulation`. Vous pouvez l'enregistrer sous le format Excel classique pour ne plus avoir à choisir le mode de séparateur à chaque ouverture. 
  
### En cas d'erreur  
Vérifiez :  
  
- Que l'armoire électrique d'instrumentation est allumée 
- Que l'ESP302 et le WT200 soit allumés 
- Que les deux fils USB avec un embout bleu soit branché dans l'ordinateur 
- Que le port série soit branché sur l'ESP302 
- Que le fichier dans lequel vous essayez d'enregistrer la mesure n'est pas ouvert autre part 
- Que le fichier de configuration `confCellules.ini` est bien présent au chemin indiqué dans l'onglet `Constantes` du programme 
- Que les ressources VISA dans l'onglet `Constantes` sont bien configurées (à chaque changement arrêtez le programme avec le bouton `Arrêt` et relancez le avec la flèche en haut à gauche, Car les constantes ne sont pas sauvegardé quand on ferme le programme) 
  
Redémarrez le programme.  
Si l'erreur subsiste, redémarrez l'ordinateur et l'armoire électrique d'instrumentation.  
Si l'erreur provient de l'ESP302, le numéro de l'erreur devrait s'afficher avec un message, se referrer au manuel de programmation (`Programmer's Manual`) pour trouver la signification de l'erreur.  
Si l'erreur provient du programme, il y aura deux boutons `Continuer` et `Arrêter`, si vous cliquez sur `Continuer` le programme continuera mais il est possible que la mesure soit faussée car le programme prendra la valeur par défaut pour l'instruction qui a échouée. Si vous cliquez sur `Arrêter` le programme s'arrêtera.  
  
 
