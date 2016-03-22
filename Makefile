sourcemd := $(wildcard md/*.md)
sourcetex := $(sourcemd:md/%.md=tex/%.tex)

tex/%.tex: md/%.md
	pandoc $< -o $@

release/main.pdf: main.tex $(sourcetex)
	mkdir -p release
	lualatex  --output-directory=release main.tex

.PHONY: clean
clean:
	rm -f release/* tex/*
