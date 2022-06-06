#!/usr/bin/env bash

git fetch origin main:main
git diff --name-only main $HEAD > modified
[ -s modified ] && echo "these files have changed" && cat modified || echo "File empty"
rm modified

