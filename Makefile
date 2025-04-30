all:
	./vsdiff "codigo" "web"
	./vsdiff "codigo" "reh"
	./vsdiff "codigo" "reh-web"
	./vsdiff "vscode" "web" "stable"
	./vsdiff "vscode" "web" "insider"
	./vsdiff "vscode" "web" "exploration"
	./vsdiff "vscode" "reh" "stable"
	./vsdiff "vscode" "reh" "insider"
	./vsdiff "vscode" "reh" "exploration"
	./vsdiff "vscode" "reh-web" "stable"
	./vsdiff "vscode" "reh-web" "insider"
	./vsdiff "vscode" "reh-web" "exploration"
	./vsdiff "vscodium" "reh"
	./vsdiff "vscodium" "reh-web"
	./compare *_reh_* > reh.diff.csv
	./compare *_web_* > web.diff.csv
	./compare *_reh-web_* > reh-web.diff.csv

clean:
	rm *.txt *.csv || true

readme:
	echo '# vsdiff' > README.md
	echo >> README.md
	echo '- [web](#web)' >> README.md
	echo '- [reh](#reh)' >> README.md
	echo '- [reh-web](#reh-web)' >> README.md
	echo >> README.md

	echo '## web' >> README.md
	echo >> README.md
	uvx csv2md web.diff.csv >> README.md

	echo '## reh' >> README.md
	echo >> README.md
	uvx csv2md reh.diff.csv >> README.md

	echo '## reh-web' >> README.md
	echo >> README.md
	uvx csv2md reh-web.diff.csv >> README.md
