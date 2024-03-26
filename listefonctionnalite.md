# Besoins/Fonctionnalitées/Contraintes Labview Banc XY

## Liste des besoins utilisateur
 - [x] Choisir entre mesure d'irradience en croix ou en cartographie [X]29/02  
- [ ] Choisir une dimension de mesure [X] 28/02  
Choisir un pas de mesure [X] 28/02  
Bouton mettre a zero a cette position [X] 06/03  
Bouton visualisation des informations de mesure calculé et ajusté (nombre de points, distance de mesure) [X] 29/02  
Bouton voir tension cellule de mesure en direct [X] 05/03  
Boutons deplacer le chariot de 5mm [X] 06/03 
Barre de progression [X] 04/03  
Bouton aller au zero [X] 05/03 


### Informations entré par l'utilisateur, à enregistrer avec la mesure  
- Opérateur [X] 05/03  
- Nom de la source mesuré (nom de la lampe) [X] 05/03  
- Ref de la source mesuré (ref de la lampe) [X] 05/03    
- Tension fournie moyenne [X] 05/03  
- Intensité fournie moyenne [X] 05/03  
- N° SQ (indiqué en haut de la feuille de demande de mesure) [X] 05/03  
- Designation de la cellule de mesure [X] 05/03  
- Temperature de la cellule de mesure [X] 05/03  
- Distance lampe-cellule [X] 05/03   
- Temps de pause pour mesure [X] 5/03  
- Tension alim ±(commentaires sur ancienne mesures) [X] 05/03  
- Puissance (commentaires sur ancienne mesures) [X] 05/03  
- Intensité (commentaires sur ancienne mesures) [X] 05/03  

### Informations enregistré automatiquement par le systeme
- Date de mesure [X] 06/03  
- Tableau d'irradience calculé en fonction de la designation de la cellule de mesure [X] 06/03  


## Liste des contraintes 
Il faut que la distance soit un nombre pair pour pouvoir le diviser pour avoir des coordonnées de depart entière [X] 28/02  
Il faut que distance soit multiple du pas correspondant obtenir un nombre de point de mesure entier [X] 01/03  
Il doit y avoir un passage par 0, donc il faut que distance/2 soit multiple du pas correspondant [X] 01/03  
Les coordonnées min et max doivent être comprise entre les limites de deplacement du controleur (xxSL? et xxSR?) [X] 28/02  
Generer liste d'instruction, et afficher liste de coordonnées avant de lancer la mesure [X] 01/03  
Handling des erreurs du boitier ESP302 [X]  
