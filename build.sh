#!/bin/sh

set -i 

mdbook build
cd docs && rpl -R '.md"' '.html"' *.html

