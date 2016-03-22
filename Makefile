tex/%.tex: md/%.md
	pandoc $< -o $@

main.pdf: main.tex tex/*.tex
	lualatex main.tex

.PHONY: clean
clean:
	rm -f main.pdf main.log main.aux tex/*
