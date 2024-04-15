# Besoins/Fonctionnalitées/Contraintes Labview Banc XY

## Liste des besoins utilisateur
- [X] Choisir entre mesure d'irradience en croix ou en cartographie 29/02  
- [X] Choisir une dimension de mesure  28/02  
- [X] Choisir un pas de mesure  28/02  
- [X] Bouton mettre a zero a cette position  06/03  
- [X] Bouton visualisation des informations de mesure calculé et ajusté (nombre de points, distance de mesure)  29/02  
- [X] Bouton voir tension cellule de mesure en direct  05/03  
- [X] Boutons deplacer le chariot de 5mm  06/03 
- [X] Barre de progression  04/03  
- [X] Bouton aller au zero  05/03 


### Informations entré par l'utilisateur, à enregistrer avec la mesure  
- [X] Opérateur  05/03  
- [X] Nom de la source mesuré (nom de la lampe)  05/03  
- [X] Ref de la source mesuré (ref de la lampe)  05/03    
- [X] Tension fournie moyenne  05/03  
- [X] Intensité fournie moyenne  05/03  
- [X] N° SQ (indiqué en haut de la feuille de demande de mesure)  05/03  
- [X] Designation de la cellule de mesure  05/03  
- [X] Temperature de la cellule de mesure  05/03  
- [X] Distance lampe-cellule  05/03   
- [X] Temps de pause pour mesure  5/03  
- [X] Tension alim ±(commentaires sur ancienne mesures)  05/03  
- [X] Puissance (commentaires sur ancienne mesures)  05/03  
- [X] Intensité (commentaires sur ancienne mesures)  05/03  

### Informations enregistré automatiquement par le systeme
- [X] Date de mesure  06/03  
- [X] Tableau d'irradience calculé en fonction de la designation de la cellule de mesure  06/03  


## Liste des contraintes 
- [X] Il faut que la distance soit un nombre pair pour pouvoir le diviser pour avoir des coordonnées de depart entière  28/02  
- [X] Il faut que distance soit multiple du pas correspondant obtenir un nombre de point de mesure entier  01/03  
- [X] Il doit y avoir un passage par 0, donc il faut que distance/2 soit multiple du pas correspondant  01/03  
- [X] Les coordonnées min et max doivent être comprise entre les limites de deplacement du controleur (xxSL? et xxSR?)  28/02  
- [X] Generer liste d'instruction, et afficher liste de coordonnées avant de lancer la mesure  01/03  
- [X] Handling des erreurs du boitier ESP302 07/03    
