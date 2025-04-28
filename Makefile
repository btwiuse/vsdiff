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
	./compare *_reh_* > reh.diff.csv
	./compare *_web_* > web.diff.csv
	./compare *_reh-web_* > reh-web.diff.csv

clean:
	rm *.txt *.csv || true
