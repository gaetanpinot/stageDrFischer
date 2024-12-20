# Documentation technique du BancXY  
  
## Système  
Le système est composé de 5 éléments principaux:  

- [Une cellule de mesure d'irradiance Medtherm](#sonde-de-mesure-dirradiance-medtherm)
- [Un boitier ADAM 4011](#boitier-adam-4011) 
- [Un contrôleur Newport ESP 302](#controleur-newport-esp-302)
- [Un multimètre Yokogawa WT 200](#multimetre-yokogawa-wt-200)
- [Un ordinateur](#ordinateur) doté du [programme LabVIEW BancXY](#logiciel)
  
### Sonde de mesure d'irradiance Medtherm  
La cellule de mesure d'irradiance Medtherm série 64 est un capteur qui mesure l'irradiance en W/m² et sort une tension entre 0 et 10 mV. Elle est connectée au boitier ADAM 4011.  
  
### Boitier ADAM 4011  
Ce boitier mesure la tension de la cellule et est branché à un convertisseur NI USB-485.  
  
### Contrôleur Newport ESP 302  
Ce contrôleur permet de contrôler la position du Banc XY en actionnant des moteurs pas à pas qui font bouger la cellule de mesure sur deux axes horizontaux.  
  
### Multimètre Yokogawa WT 200  
Ce multimètre permet de mesurer la tension, l'intensité et la puissance de la lampe pendant la mesure. Il communique avec l'ordinateur par un port GPIB branché sur un convertisseur NI GPIB-USB-HS.  

### Ordinateur  
L'ordinateur est doté du programme LabVIEW BancXY qui permet de communiquer avec l'ESP 302 et de lire les données de la cellule de mesure.  
  
Ensemble, ces éléments forme le Banc XY qui permet de mesurer l'irradiance d'une source lumineuse sur une surface donnée.  
  
## Logiciel  
Le logiciel BancXY permet de:  

- Prendre une mesure d'irradiance sur des distances et avec des pas définies.
- Voir la tension de la cellule en direct. 
- Changer la position de la cellule manuellement. 
  
### Précisions pour la maintenance/modification du logiciel  
Chaque VI est censé avoir des commentaires qui décrivent son utilité et son fonctionnement.  

Le logiciel utilise des structures  événements pour gérer les actions de l'utilisateur. Si on veut modifier le comportement d'un événement il faut éditer les événements géré par la conditions. Il peut y avoir plusieurs événements dans la même structure évènement.  

Pour simplifier le transfert d'informations de VI à d'autre on utilise des clusters qu'on groupe et qu'on dégroupe.  

Pour mettre à jour en temps réel la valeur max d'irradiance et le graphe d'irradiance on passe en paramètre les références de ces indicateurs pour que le sous VI puisse y accéder sans avoir à ouvrir une nouvelle fenêtre.  

Pour la ressource VISA du contrôleur ADAM 4011, il faut mettre la propriété de ressource VISA `Wire mode` à  3 (Wire2-Auto), cela ne peut pas être changé depuis le `Visa test panel`.  

Le fichier de configuration `confCellules.ini` doit être placé dans le dossier `data`, à la racine du programme (le fichier BancXY.exe), si le chemin du fichier BancXY.exe est `C:\BancXY\BancXY.exe`, le fichier de configuration doit être placé dans `C:\BancXY\data\confCellules.ini`.  
Le fichier de configuration `confCellules.ini` doit être écrit de la manière suivante:  
```
21039a=201
21039b=-371.85 
21039modele=64-0.2-20k
21033a=604,6
21033b=-335,55
21033modele=64-0.5-20k
21019a= 1002 
21019b=-40,08
21019modele=64-1-20k
21028a=2217
21028b=121,35
21028modele=64-2-20k
21044a=5945
21044b=838,245
21044modele=64-5-20k
21043a=10020
21043b=1362,72
21043modele=64-10-20k
21035a=19800
21035b=2791,8
21035modele=64-20-20k
#valeurs de conversion mV->W/m² de chaque cellules sous la forme
#y=ax+b, a le produit, b la somme
#et modele le numero de modele
```  
Le projet BancXY contient les spécifications de constructions qui permettent de construire l'exécutable si des modifications on été faites au VIs.

Les ressources VISA assignées à chaque instrument doivent être renseignées dans l'onglet `Constantes` du programme. Normalement les valeurs par défaut sont les bonnes (`COM 1` ou `ESP302` ou `ASRL1::INSTR` pour l'ESP302, `GPIB0::8::INSTR` ou `WT200` pour le WT200, `COM 4` ou `ASRL4::INSTR` pour l'ADAM4011), mais en cas de changement d'ordinateur ou de port, les noms pourrait changer.

Si il faut rajouter une sonde dans le programme, il faut ouvrir la face avant du VI `mainBancXY` et ajouter un élément dans le menu déroulant `Cellule de mesure` et rajouter les valeurs de conversion dans le fichier `confCellules.ini`.   
Exemple:  
Je veux rajoute une sonde dont le numéro d'identifiant est 3033, le numéro de série 55-00-21 et la formule de conversion est  $33 \times x + 11$  

- Je rajoute la valeur 3033 au choix de cellule dans le menu déroulant 
- Je rajoute les lignes suivantes dans le fichier `confCellules.ini` 
```
3033a=33
3033b=11
3033modele=55-00-21
```
- Je vérifie que les valeurs sont bien prises en compte en lançant une mesure en sélectionnant la sonde 3033 dans le menu déroulant.
- Je recompile le programme pour que les modifications soient prises en compte. 
- Je remplace l'ancien exécutable avec le nouveau, sans oublier les fichier de configuration



