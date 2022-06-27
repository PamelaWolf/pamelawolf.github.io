#!/bin/bash
set -euo pipefail

zola build --output-dir ../dist

git checkout master

cp -r ../dist/* .

git diff --stat