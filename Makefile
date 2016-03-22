sourcemd := $(wildcard md/*.md)
sourcetex := $(sourcemd:md/%.md=tex/%.tex)

tex/%.tex: md/%.md
	pandoc $< -o $@

main.pdf: main.tex $(sourcetex)
	lualatex main.tex

.PHONY: clean
clean:
	rm -f main.pdf main.log main.aux tex/*
