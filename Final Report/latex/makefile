all:tex

tex:big-report.tex
	pdflatex --jobname="Processor Design Project Report" -output-directory out/ big-report.tex

clean:
	cd out/
	trash-put -f *.lof *.lot *.toc *.aux *.out *.log
