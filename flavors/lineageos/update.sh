#!/usr/bin/env bash

set -eu

args=(
    --mirror "/mnt/media/mirror"
    --ref-type branch
    "https://github.com/LineageOS/android"
    "$@"
    ../*/repo-*.json
)

export TMPDIR=/tmp

../../mk-repo-file.py "${args[@]}"