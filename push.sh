#!/bin/sh
DEST_PATH="/data/user/0/com.termux/files/home/reserve/.gitignore.d"
/data/user/0/com.termux/files/home/cpy.sh
stat -c %s "$DEST_PATH" > /data/user/0/com.termux/files/home/reserve/data.dat
COMMIT_MSG="$(date '+%Y-%m-%d %H:%M:%S') | $(getprop ro.soc.model) | $(getprop ro.build.product)"
git update-index --no-assume-unchanged /data/user/0/com.termux/files/home/reserve/.gitignore.d
git add .
git commit -m "$COMMIT_MSG"
git push --force