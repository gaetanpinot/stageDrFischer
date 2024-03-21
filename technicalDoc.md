# Documentation technique du BancXY  
  
## Système  
Le système est composé de 5 éléments principaux:  
- Une cellule de mesure d'irradiance Medtherm  
- Un boitier ADAM 4011  
- Un convertisseur NI USB-485  
- Un controleur Newport ESP 302  
- Un ordinateur doté du programme LabVIEW BancXY  
  
### Sonde de mesure d'irradiance Medtherm  
La cellule de mesure d'irradiance Medtherm série 64 est un capteur qui mesure l'irradiance en W/m² et sort une tension entre 0 et 10 mV. Elle est connécté au boitier ADAM 4011.  
  
### Boitier ADAM 4011  
Ce boitier mesure la tension de la cellule et est branché au convertisseur NI USB-485.  
  
### Convertisseur NI USB-485  
Ce convertisseur permet de convertir une entrée RS-485 en USB pour l'ordinateur.  
  
### Controleur Newport ESP 302  
Ce controleur permet de controler la position du banc XY en actionnant des moteurs pas-à-pas qui font bouger la cellule de mesure sur deux axes horizontaux.  
  
### Ordinateur  
L'ordinateur est doté du programme LabVIEW BancXY qui permet de communiquer avec l'ESP 302 et de lire les données de la cellule de mesure.  
  
Ensemble, ces éléments forme le BancXY qui permet de mesurer l'irradiance d'une source lumineuse sur une surface donnée.  
  
## Logiciel  
Le logiciel BancXY permet de:  
- Prendre une mesure d'irradiance sur des distances et avec des pas définies.  
- Voir la tension de la cellule en direct.  
- Changer la position de la cellule manuellement.  
  
### Précisions  
Le logiciel utilise des structures  évenements pour gérer les actions de l'utilisateur. Si on veut modifier le comportement d'un événement il faut éditer les événements géré par la conditions. Il peut y avoir plusieurs événements dans la même structure évènement.  
Pour simplifier le transfert d'informations de VI à d'autre on utilise des clusters qu'on groupe et qu'on dégroupe.  
Pour mettre à jour en temps réel la valeur max d'irradiance et le graphe d'irradiance on passe en paramètre les références de ces indicateurs pour que le sous VI puisse y accéder sans avoir à ouvrir une nouvelle fenêtre.  
Pour la ressource VISA du controlleur ADAM 4011, il faut utiliser le `Wire mode` 3 (Wire2-Auto), cela ne peut pas être changé depuis le `Visa test panel`.  

