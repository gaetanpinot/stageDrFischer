cablage:
	wireviz cableLambda.yml -o images/cableLambda
	inkscape images/cableLambda.svg -w 2000 -o images/cableLambda.png
pdfTechDocXY:
	pandoc DocTechniqueBancXY.md -o pdf/DocTechniqueBancXY.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/DocTechniqueBancXY.pdf;
pdfUserDocXY:
	pandoc DocUtilisateurBancXY.md -o pdf/DocUtilisateurBancXY.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/DocUtilisateurBancXY.pdf;
pdfLambda:
	pdflatex -output-directory pdf ./latex/rapportLambda.tex ; xreader ./pdf/rapportLambda.pdf
pdfUserDocLambda:
	pandoc DocUtilisateurLambdaCapture.md -o pdf/DocUtilisateurLambdaCapture.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/DocUtilisateurLambdaCapture.pdf;
pdfRapportStage:
	latexmk -xelatex latex/RapportDeStage.tex -outdir=pdf;xreader pdf/RapportDeStage.pdf
pdfTechDocLambda:
	pandoc DocTechniqueLambdaCapture.md -o pdf/DocTechniqueLambdaCapture.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/DocTechniqueLambdaCapture.pdf;
