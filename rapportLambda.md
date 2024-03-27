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
  
[Retro Printer](https://www.retroprinter.com/) qui permet de capturer la sortie imprimante et de la sauvegarder sur un ordinateur. Vendu directement.  
[Lpt Capture](https://github.com/bkw777/LPT_Capture) idem mais plus petit et pas vendu directement  
[Fake parralel printer capture](https://tomverbeure.github.io/2023/01/24/Fake-Parallel-Printer-Capture-Tool-HW.html) similaire à LPT Capture.  
  
Malheureusement je ne sais pas si ces appareils fonctionneront avec le Lambda 9 car la communication avec l'imprimante est inconnue. Je pense qu'il est possible de capturer les données si l'ordinateur du Lambda 9 utilise les signaux standarts pour transmettre de l'information à l'imprimante.  
  

