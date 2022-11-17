#!/usr/bin/env bash

# Build base image using apko build container
docker run -v "$PWD":/work \
    cgr.dev/chainguard/apko \
    build apko.yaml sg-distroless:latest sg-distroless.tar ||
    echo "*** Build failed ***"

# Import into Docker
docker load <sg-distroless.tar
