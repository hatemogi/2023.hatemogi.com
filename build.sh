#!/bin/sh

set -e

mdbook build
cd docs
rpl -Rx '*.html' '.md"' '.html"' .
