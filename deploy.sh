#!/bin/sh

mdbook build && \
aws --profile hatemogi.com s3 cp book s3://2023.hatemogi.com/ --recursive --exclude '.DS_Store'
