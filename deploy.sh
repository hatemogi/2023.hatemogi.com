#!/bin/sh

mdbook build && \
aws --profile hatemogi.com s3 cp docs s3://2023.hatemogi.com/ --recursive --exclude '.DS_Store'
