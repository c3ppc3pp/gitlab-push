#!/usr/bin/env sh

git config --global --add safe.directory /github/workspace
git remote add mirror "$TOKEN_URL"
git push --tags --force --prune mirror "refs/remotes/origin/*:refs/heads/*"
