#!/bin/bash

cd $(dirname $0)
source config.sh


if ! [ -d notes ]; then
        mkdir notes
        git -C notes init
        git -C notes remote add origin $GIT_REMOTE
        git -C notes config user.email "$GIT_EMAIL"
        git -C notes config user.name "$GIT_USER"
        echo "archive.zip" >> notes/.gitignore
        git -C notes add .gitignore
fi

rm notes/*
$H backup notes/archive.zip

cd notes
unzip -o archive.zip

if [[ `git status --porcelain` ]]; then
        git add -A
        git commit -m "HEDGEDOC_BACKUPPER@$(date --iso-8601=seconds)"
fi

if [[ "$GIT_PUSH" == "1" ]]; then
        git push origin main
fi

rm archive.zip
