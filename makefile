cablage:
	wireviz cableLambda.yml -o images/cableLambda
	inkscape images/cableLambda.svg -w 2000 -o images/cableLambda.png
pdfUserDocXY:
	pandoc DocUtilisateurBancXY.md -o pdf/DocUtilisateurBancXY.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/DocUtilisateurBancXY.pdf;
pdfLambda:
	pdflatex -output-directory pdf ./latex/rapportLambda.tex ; xreader ./pdf/rapportLambda.pdf
pdfUserDocLambda:
	pandoc DocUtilisateurLambdaCapture.md -o pdf/DocUtilisateurLambdaCapture.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/DocUtilisateurLambdaCapture.pdf;
pdfRapportStage:
	pandoc RapportDeStage.md -o pdf/RapportDeStage.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/RapportDeStage.pdf;
