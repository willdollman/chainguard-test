#!/usr/bin/env bash

docker run -v "$PWD":/work \
    cgr.dev/chainguard/apko \
    build alpine-base.yaml apko-alpine:test apko-alpine.tar
