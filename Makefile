_all: resume.pdf resume.html

resume.pdf:resume.md
	docker run --rm -v $(PWD):/data --user `id -u`:`id -g` pandoc/latex resume.md -t latex   -o resume.pdf

resume.html:resume.md
	docker run --rm -v $(PWD):/data --user `id -u`:`id -g` pandoc/latex resume.md -o resume.html
