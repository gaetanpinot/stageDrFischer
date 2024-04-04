# Perkin Elmer Lambda 9  
  
## Problème  
Actuellement le computer unit effectue la mesure et l'imprime au fur et à mesure. Il n'est pas possible de sauvegarder les données sur un ordinateur.  
Le protocol de communication avec l'imprimante est inconnu.  
  
## Choses que j'ai essayé:  
  
Brancher l'imprimante sur un ordinateur avec un convertissuer usb parralel pour voir si elle est reconnue. non elle ne l'est pas  
essayé d'imprimer un fichier texte avec l'imprimante Printer/Plotter. ça ne marche pas meme en essayant plusieurs drivers différents  
Lu le manuel, rien trouvé sur la communication avec l'imprimante ni sur une sortie de donnée  
Chercher des informations sur l'imprimante Printer/Plotter et son mode de communication sur internet. Rien trouvé.  
Chercher des informations sur comment sortir des informations de mesure de l'appareil.  
Essayé de connecter l'ordinateur sur le port série du Lambda 9 et de suivre [ces instructions](https://ftgsoftware.com/issues_pe_ir_com.htm) mais aucune réponse  
Trouvé un site [FtgSoftware](https://ftgsoftware.com/issues_lambda19.htm) qui donne quelques informations éparses sur un logiciel `Lambda SPX` avec des prérequis très précis et un convertisseur 2\*sub D25 vers sub D37 qu'il faut fabriquer soi meme.  
Trouvé des appareils de capture de sortie imprimante:  
  
~~[Retro Printer](https://www.retroprinter.com/) qui permet de capturer la sortie imprimante et de la sauvegarder sur un ordinateur. Vendu directement.~~  
~~[Lpt Capture](https://github.com/bkw777/LPT_Capture) idem mais plus petit et pas vendu directement~~  
~~[Fake parralel printer capture](https://tomverbeure.github.io/2023/01/24/Fake-Parallel-Printer-Capture-Tool-HW.html) similaire à LPT Capture.~~  
(Ce n'est pas un port parallele mais un port série que l'on essaie de capturer)  
  
Malheureusement je ne sais pas si ces appareils fonctionneront avec le Lambda 9 car la communication avec l'imprimante est inconnue. Je pense qu'il est possible de capturer les données si l'ordinateur du Lambda 9 utilise les signaux standarts pour transmettre de l'information à l'imprimante.  
  
### Protocol analyzer  
  
Auto config du protocol analyzer:  
  
protocol: Char Async/sync  
bit order: LSB 1st  
code: Ascii 8  
Parity: none  
transpar: none  
Mode: async 1  
bits/Sec: 9600  
disp mode: D & S  
supress: none  
  
extrait d'une trame de communication:  
```  
IT,Z0,F15936,416,0,200,D0218,1280,A1,X2200,-100,5,S2100.0,D1,1,Y120.0,-14.000,4,Z0,D0128,1280,L1\r\r  
```  
```  
A0,D1,1,M0,10\r  
```  
  
### Programme Simulate DCE  
Programme qui simule l'imprimante sur le HP4951:  
  
```  
Simulate DCE  
  
Block 1  
Set Lead DSR On  
	and then  
Set Lead CD On  
	and then  
Set Lead CTS On  
	and then  
Send F,00\r  
  
Block 2  
When DTE \r  
	then goto Block 3  
  
Block 3  
Send 01\r  
	and then  
Goto Block 2  
```  

### Informations  
La plage des mesures est sur 14 bits(16384)  
Malgrès le db25, la communication se fait en série (en désactivant certains pin la communication fonctionne toujours) 
Inversement de certaines lignes quand on connecte l'ordinateur au Lambda 9

### Cablage 
Cablage qui fonctionne pour brancher l'ordinateur au lambda 9:  
PC -> Cable DB9 null Modem -> convertisseur DB9 vers DB25 -> raccordement des pins 4,5,6,8 (RTS,CTS,DSR,DCD) ensemble -> Cable DB25 -> Lambda 9  

### Cablage définitif:

![[./images/cableLambda.svg]]


