all: draft-hoffman-rfc7997bis.txt

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc $<

%.xml: %.mkd
	kramdown-rfc $< >$@.new
	mv $@.new $@
