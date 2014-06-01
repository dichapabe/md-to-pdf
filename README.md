Procedure to convert the LearnOSM markdown files to PDF

1. Install pandoc, haskell and tex dependencies.
2. Clone this repository: https://github.com/essc/markdowntopdf. Folder contains  readme.md, common and en folder. 
3. In the 'en' folder, markdown files (e.g. osm-intro.md) should be added and input it on the Makefile. On the 'common' folder, there's pdf-template.tex file wherein you can edit to format what is your expected pdf output
4.  Remove the YAML Frontmatter rules.
5. In the Terminal, run 'make' 