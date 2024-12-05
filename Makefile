SOURCE = $(wildcard blog/*.md) $(wildcard blog/*/*.md)
OBJ = $(SOURCE:.md=.html)

main: $(OBJ)
	pandoc -t html index.md --css=style.css -s -o index.html

blog/%.html: blog/%.md
	pandoc -t html --syntax-definition=gnuplot.xml --highlight-style=kate --css=../style.css -s $< -o $@

blog/wireshark/%.html: blog/wireshark/%.md
	pandoc -t html --syntax-definition=gnuplot.xml --highlight-style=kate --css=../../style.css -s $< -o $@
