#!/usr/bin/env sh

git config --global --add safe.directory /github/workspace
git remote add mirror "$INPUT_TOKEN_URL"
git remote show mirror
git push --tags --force --prune mirror "refs/remotes/origin/*:refs/heads/*"
