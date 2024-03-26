# Documentation utilisateur du Banc XY  
  
Le logiciel du Banc XY permet de :  
  
- Deplacer la cellule de mesure  
- Mettre le zero  
- Aller au zero  
- Choisir des dimensions de mesures, une cellule, lancer la mesure et obtenir les résultat sous la forme d'un fichier tableur  
  
  
## Etapes de déroulement normal d'une mesure d'irradiance  
  
### Etape 1  
- Allumer l'armoire éléctrique de gauche pour alimenter le banc (bouton `MISE SOUS TENSION INSTRUMENTATION`)  
- S'assurer que le controleur Newport est allumé, sinon il y a un interrupteur à l'arrière au dessus de la prise d'alimentation  
- S'assurer que le WT200 est allumé.  
- Allumer le PC  
- Ouvrir le logiciel BancXY  
  
### Etape 2  
- Mettre en place le luminaire à mesurer  
- Mettre en place la cellule de mesure d'irradiance adéquate à la lampe, ne pas oublier de brancher les tuyaux de refroidissement  
- Ajuster la hauteur du luminaire  
- Ajuster la position de la cellule a l'aide des flèches dans l'onglet `Controles` dans le logiciel BancXY  
- Quand la lampe est bien centrée sur la cellule, appuyer sur le bouton `Mettre le zero à cette position`  
  
### Etape 3  
- Allumer le refroidissement de la sonde  
- Verifier l'absence de fuite de liquide de refroidissement  
- Cliquer le bouton `Voir la tension en temps réel` pour voir la tension de la cellule  
- Allumer la lampe à l'aide de l'armoire éléctrique de droite  
- Verifier que la tension de la cellule ne dépasse pas la pleine échelle (~10mV)  
- Si la tension dépasse la pleine échelle, éteindre la lampe et changer la cellule pour une cellule avec une plage de mesure plus grande  
  
### Etape 4  
- Attendre (15 à 20minutes) que la tension et la temperature se stabilise (~20/21°C)  
- Sur l'onglet `Informations de la mesure` renseigner les informations nécéssaires, ne pas oublier de changer le n° de la cellule pour que les bonnes valeurs d'irradiance soient enregistrées  
- Sur l'onglet `Distance de mesure` renseigner les distances de mesure, le logiciel ajuste automatiquement les distances de mesure pour toujours passer par les coordonnées 0,0  
- Appuyer sur le bouton `Calculer` et verifiez le nombre de points et les distances ajustées.  
  
#### ATTENTION  
__Si vous rentrez des dimensions trop grandes ou que le zero et fait trop proche du bord, le chariot va atteindre les bord et l'ESP302 arretera le moteur (normalement le programme affichera une erreur) et le reste de la mesure sera mauvaise__  
	Dans ce cas il faut arreter le programme, redemarrer le programme, repositionner la cellule au zero, ajuster les dimensions de mesures et la position du zero pour eviter que le chariot atteigne les bords.  
  
### Etape 5  
- Quand tout est prêt, cliquer sur le bouton `Lancer la mesure`  dans l'onglet `Controles`  
- Choisir le nom et l'emplacement du fichier de mesure et cliquer sur `Enregistrer le fichier de mesure`  
- La barre de progression et le graphe d'irradiance indique l'avancement de la mesure  
- Les graphes de tension, d'intensité et de puissance indique en temps réel l'alimentation de la lampe et peuvent indiquer une variation de l'alimentation  
- A la fin de la mesure vérifier le fichier de mesure pour s'assurer que les valeurs sont cohérentes  
- Le fichier de mesure est enregistré au format `.xls`, quand on l'ouvre avec Excel ou LibreOffice Calc, il est demandé de choisir la manière de l'ouvrir, choisir le mode de séparateur `Tabulation`. Vous pouvez l'enregistrer sous le format Excel classique pour ne plus avoir à choisir le mode de séparateur à chaque ouverture.  
  
### En cas d'erreur  
Verifier :  
  
- Que l'armoire éléctrique d'instrumentation est allumée.  
- Que l'ESP302, le WT200 soit allumés.  
- Que les deux fils USB avec un embout bleu soit branché dans l'ordinateur.  
- Que le port série soit branché sur l'ESP302.  
- Que le fichier dans lequel vous essayez d'enregistrer la mesure n'est pas ouvert autre part.  
- Que le fichier de configuration `confCellules.ini` est bien présent au chemin indiqué dans l'onglet `Constantes` du programme.  
- Que les ressources VISA dans l'onglet `Constantes` sont bien configurées (à chaque changement arretez le programme avec le bouton `Arrêt` et relancez le avec la flèche en haut à gauche, Car les constantes ne sont pas sauvegardé quand on ferme le programme).  
  
Redémarrer le programme.  
Si l'erreur subsiste, redémarrer l'ordinateur et l'armoire éléctrique d'instrumentation.  
Si l'erreur provient de l'ESP302, le numéro de l'erreur devrait s'afficher avec un message, se réferrer au manuel de programmation (`Proggramer's Manual`) pour trouver la signification de l'erreur.  
Si l'erreur provient du programme, il y aura deux boutons `Continuer` et `Arrêter`, si vous cliquez sur `Continuer` le programme continuera mais il est possible que la mesure soit faussée car le programme prendra la valeur par défaut pour l'instruction qui a échouée. Si vous cliquez sur `Arrêter` le programme s'arrêtera.  
  
  

