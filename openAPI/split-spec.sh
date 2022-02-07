#!/bin/bash
if ! which openapi 2> /dev/null; then
        echo "You need redoc's openapi to run this script."
        echo "Install here: https://redoc.ly/docs/cli/."
        echo "exiting..."
        exit 
fi

openapi split openapi.yaml --outDir unbundled

