SOURCE_FILE_NAME =  0200-12-31-beginner.md 0200-12-29-start-osm.md
REPLACED_FILE =  {}
BOOK_FILE_NAME = samp

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template ../common/pdf-template.tex \
	--listings

old = "/images/en"
new = "images/en"


# Copy relevant sections to your source directory

# Remove YAML Frontmatter rules

# Translate from local to subdirectory


en/samp: sed
	 cd en && $(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(REPLACED_FILE) -o $(BOOK_FILE_NAME).pdf

sed: 
	cd en && for i in $(ls *.md); do \
				sed 1,9d $(i) > $(REPLACED_FILE); done

image: 
	grep -rl $(old) ./ | xargs sed -i 's/$(old)/$(new)/g'
#	cd en && first = ${old/images/$(new)}


clean:
	rm -f */$(BOOK_FILE_NAME).pdfmake



