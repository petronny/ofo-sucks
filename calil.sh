#!/bin/sh
cd `dirname $0`

git reset --hard
git pull

python get-data.py

git add .
git commit -m "[$(LANG=C date)] auto update"
git push
