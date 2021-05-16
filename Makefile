PANDOC_URL=https://github.com/jgm/pandoc/releases/download/2.13/pandoc-2.13-linux-amd64.tar.gz

prerequisites:
	export PATH=~/.local/bin:$PATH
	wget $(PANDOC_URL)
	tar xf pandoc-2.13-linux-amd64.tar.gz
	mkdir -p ~/.local/bin
	cp ./pandoc-2.13/bin/pandoc ~/.local/bin
	chmod a+rx ~/.local/bin/pandoc
.DELETE_ON_ERROR:

report.md: holes.csv
	./create_report > report.md
.DELETE_ON_ERROR:

report.html: holes.csv
	./create_report > report.md
	./create_html
.DELETE_ON_ERROR:
