ADOC_FILES := $(filter-out index.adoc _index.adoc, $(wildcard *.adoc))
PDF_FILES := $(ADOC_FILES:.adoc=.pdf)

%.pdf: %.adoc
	@adoc \
		--input $< \
		--output $@ \
		--language perl \
		--title-page \
		--toc left \
		--source-highlighter pygments \
		--doc-type book

all: $(PDF_FILES)

force:
	touch *.adoc
	make all

clean:
	rm -f $(PDF_FILES)

