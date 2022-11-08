mds=$(wildcard *.md)
ipynbs=$(wildcard *.ipynb)

%.pdf: %.md:
	codebraid pandoc --from markdown --to pdf %.md

%.pdf: %.ipynb
	jupyter nbconvert %.ipynb --to pdf
