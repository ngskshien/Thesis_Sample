main.pdf :
	ptex2pdf -l -ot -kanji=utf8 main.tex
	pbibtex -kanji=utf8 main
	ptex2pdf -l -ot -kanji=utf8 main.tex
	ptex2pdf -l -ot -kanji=utf8 main.tex
	ptex2pdf -l -ot -kanji=utf8 main.tex

.PHONY : clean distclean

clean :
	del *.aux *.log *.toc *.bbl *.blg
	del 01_ch1\*.aux
	del 02_ch2\*.aux
	del 03_ch3\*.aux
	del 04_appA\*.aux
	del 05_ack\*.aux
	
distclean : clean
	del main.pdf