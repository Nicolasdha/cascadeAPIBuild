#!/bin/bash
# Bundles yaml file, and makes html file

if ! which openapi > /dev/null; then
        echo "You need openapi and redoc to run this script"
        exit 1
fi

openapi bundle --ext yaml -o ../openapi.yaml openapi.yaml \
  && echo "Created bundled YAML file"
redoc-cli bundle -o ../api-doc.html openapi.yaml \
  && echo "Created HTML file"
