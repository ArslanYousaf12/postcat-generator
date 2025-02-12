#!/bin/bash




echo "============================"

git config --global user.name "${GITHUB_ACTION}"
git config --global user.email "${INPUT_EMAIL}"
git config --global safe.directory /github/workspace

python3 /user/bin/feed.py

git add -A && git commit -m "update feed"

git push --set-upstream origin main





echo "============================"