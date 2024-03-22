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
- Allumer le PC  
- Ouvrir le logiciel BancXY  

### Etape 2  
- Mettre en place le luminaire à mesurer  
- Mettre en place la cellule d'irradiance adéquate à la lampe, ne pas oublier de brancher les tuyaux de refroidissement  
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
- Attendre que la tension et la temperature se stabilise (~20/21°C)  
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
- A la fin de la mesure vérifier le fichier de mesure pour s'assurer que les valeurs sont cohérentes  
  