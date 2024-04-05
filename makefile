cablage:
	wireviz cableLambda.yml -o images/cableLambda
pdfUserDoc:
	pandoc docUtilisateur.md -o pdf/UserDoc.pdf -V geometry:margin=1in -V linestretch=1.25;
	open pdf/UserDoc.pdf;

	
