PANDOC_URL=https://github.com/jgm/pandoc/releases/download/2.13/pandoc-2.13-linux-amd64.tar.gz

prerequisites:
	export PATH=~/.local/bin:$PATH
	wget $(PANDOC_URL)
	tar xf pandoc-2.13-linux-amd64.tar.gz
	mkdir ~/.local/bin
	cp ./pandoc-2.13/bin/pandoc ~/.local/bin
	chmod a+rx ~/.local/bin/pandoc

report.md:
	touch report.md

report.html:
	touch report.html

