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
	pdflatex -output-directory pdf rapportLambda.tex ; xreader ./pdf/rapportLambda.pdf
pdfUserDocLambda:
	pandoc DocUtilisateurLambdaCapture.md -o pdf/DocUtilisateurLambdaCapture.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/DocUtilisateurLambdaCapture.pdf;
pdfRapportStage:
	latexmk -xelatex RapportDeStage.tex -outdir=pdf;xreader pdf/RapportDeStage.pdf
pdfTechDocLambda:
	pandoc DocTechniqueLambdaCapture.md -o pdf/DocTechniqueLambdaCapture.pdf -V geometry:margin=1in -V linestretch=1.25;
	xreader pdf/DocTechniqueLambdaCapture.pdf;
clean:
	/bin/rm -f *~ *.dvi *.log *.aux *.flg *.tmp *.ch *.bbl *.blg *.bat *.lof *.toc *.idx *.ind *.ilg *.out *.snm *.nav *.fls *.fdb_latexmk *.glg *.glo *.ist *.gls

