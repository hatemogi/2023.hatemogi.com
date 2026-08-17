.PHONY: build deploy serve

build:
	mdbook build
	cd docs && rpl -Rx '*.html' '.md"' '.html"' .

deploy: build
	aws --profile hatemogi.com s3 cp docs s3://2023.hatemogi.com/ --recursive --exclude '.DS_Store'

serve:
	mdbook serve
