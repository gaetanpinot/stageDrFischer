cablage:
	wireviz cableLambda.yml -o images/cableLambda
	inkscape images/cableLambda.svg -w 2000 -o images/cableLambda.png
pdfUserDoc:
	pandoc docUtilisateur.md -o pdf/UserDoc.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/UserDoc.pdf;
pdfLambda:
	pdflatex -output-directory pdf ./latex/rapportLambda.tex ; xreader ./pdf/rapportLambda.pdf
	
