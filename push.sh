#!/bin/sh
DEST_PATH="/data/user/0/com.termux/files/home/reserve/.gitignore.d"
cp -r /storage/emulated/0/AndroidIDEProjects/So2Server/app/src/main/jniLibs/arm64-v8a/libshboot.so "$DEST_PATH"
stat -c %s "$DEST_PATH" > /data/user/0/com.termux/files/home/reserve/data.dat
COMMIT_MSG="$(date '+%Y-%m-%d %H:%M:%S') | $(getprop ro.soc.model) | $(getprop ro.build.product)"
git add .
git commit -m "$COMMIT_MSG"
git push