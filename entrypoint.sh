#!/bin/bash

set -e

git config --global user.email "myemail@email.com"
git config --global user.name "$GITHUB_ORG"

echo "Upgrading version"

git clone --depth 1 https://$API_TOKEN_GITHUB@github.com/$GITHUB_ORG/$REPO_NAME.git $CLONE_DIR
cd $CLONE_DIR
date >> README.md
git add .
git commit --message "Update $NAME from $GITHUB_REPOSITORY"
git push origin master
