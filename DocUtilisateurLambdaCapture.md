# Documentation utilisateur de LambdaCapture 

## Capacité du logiciel
Le logiciel LambdaCapture peut faire:  

- La capture et la détection automatique des mesures de scan du Lambda 9
- Le traitement des mesures et la sauvegarde dans un fichier xls


## Notice d'utilisation

### Étape 1

- Allumez le Lambda 9
- Ouvrez le logiciel LambdaCapture

### Étape 2

- Choisir les paramètres de mesure
- Laissez le paramètre `RECORDER` à `CONT/SERIAL` ou `SERIAL/DASH1`
- Laissez le paramètre `ABSCISSA FORMAT` à 20nm/cm
- Lancez la mesure sur le Lambda 9
- Quand la mesure commence une led s'allume sur le logiciel
- Quand la mesure est terminée la led s'éteint et une fenêtre s'ouvre pour rentrer des informations sur la mesure
- Une fois les informations rentrées, cliquez sur `Valider`
- Sélectionnez le dossier de sauvegarde du fichier xls
- Vous pouvez lancer une nouvelle mesure immédiatement 

_Si la mesure ne correspond pas à ce qu'il attend le logiciel vous proposera de sauvegarder le fichier de mesures sans l'avoir traité_

Le fichier de mesure xls est séparé par des tabulations et les nombres à virgule utilisent des points, ce sont donc les paramètres à utiliser quand on l'ouvre pour la première fois dans Excel.
Une fois le fichier ouvert, si tout va bien, il est conseillé de le sauvegarder en format xlsx, pour ne pas à avoir à faire cette manipulation à chaque fois qu'on l'ouvre.  

## En cas d'erreur/problème  

- Vérifiez que le Lambda 9 est bien allumé
- Relancez le logiciel
- Vérifiez que le paramètre `Ressource Visa Lambda 9` est bien configuré, dans l'onglet constantes, il doit être à `COM 1`
- Appuyez quelque fois sur le bouton flèche `CHART` du Lambda 9, attendez 5 secondes, et ré appuyez dessus
- Allez voir dans l'onglet `Debug` si du texte apparait dans le champ intitulé `Flux Continu`
- Si le texte apparait, vous pouvez lancer une mesure
- Si le texte n'apparait pas, vérifiez les branchements entre l'ordinateur et le Lambda 9, ainsi que les branchements de la station de données au module de mesure

Si le problème persiste:  
Si le Lambda 9 lance la mesure mais que le logiciel ne la détecte pas, il y a peut être un problème avec le cable qui va de l'ordinateur à la station de données. Ouvrez les embouts du cable et vérifiez que les branchements ne sont pas endommagées et correspondent à ceux présent dans le schéma de la documentation technique de suppression d'imprimante.  
Si le Lambda 9 ne lance pas la mesure, cela ne peut pas être un problème venant du logiciel ou de l'ordinateur. Référez vous à la documentation technique du Lambda 9 pour plus d'informations.
