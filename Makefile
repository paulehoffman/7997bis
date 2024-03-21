all: draft-rswg-rfc7997bis.txt draft-rswg-rfc7997bis.html

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc $< --text

%.html: %.xml
	xml2rfc $< --html

%.xml: %.mkd
	kramdown-rfc $< >$@.new
	mv $@.new $@
