SOURCE_FILE_NAME = 0200-12-31-beginner.md 0200-12-30-introduction.md \
0200-12-29-start-osm.md 0200-12-28-start-josm.md 0200-12-27-more-about-josm.md \
0200-12-26-gps.md 0200-12-24-papers.md 0200-12-23-editing-with-josm.md \
0200-12-21-moving-forward.md

BOOK_FILE_NAME = samp

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template ../common/pdf-template.tex \
	--listings


# Copy relevant sections to your source directory

# Remove YAML Frontmatter rules


en/samp.pdf: 
	 cd en && $(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(SOURCE_FILE_NAME) -o $(BOOK_FILE_NAME).pdf

clean:
	rm -f */$(BOOK_FILE_NAME).pdfmake



