#!/usr/bin/env bash
set -e

USER_NAME="$1"
REPO_NAME="$2"

if [ -z "$USER_NAME" ] || [ -z "$REPO_NAME" ]; then
  echo "Usage: bash deploy.sh <github-username> <repo-name>"
  exit 1
fi

# Initialize git repo if needed
if [ ! -d .git ]; then
  git init
fi

git add .
git commit -m "Deploy static site"
git branch -M main

# Configure remote (overwrite if exists)
if git remote | grep -q origin; then
  git remote remove origin
fi
git remote add origin "https://github.com/${USER_NAME}/${REPO_NAME}.git"

git push -u origin main

echo
echo "Now enable GitHub Pages:"
echo "1) Open: https://github.com/${USER_NAME}/${REPO_NAME}/settings/pages"
echo "2) Source: Deploy from a branch"
echo "3) Branch: main   Folder: / (root)"
