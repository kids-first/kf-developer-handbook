#!/bin/sh

set -e

git checkout gh-pages
git pull --unshallow origin gh-pages

git reset --hard origin/$CIRCLE_BRANCH

sphinx-build docs/ .

git add -A
git commit -m ":recycle: Update gh-pages dcos site"
git push -f origin gh-pages
