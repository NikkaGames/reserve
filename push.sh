cp -r /storage/emulated/0/AndroidIDEProjects/So2Server/app/src/main/jniLibs/arm64-v8a/libshboot.so /data/user/0/com.termux/files/home/reserve/.gitignore.d
stat -c %s /data/user/0/com.termux/files/home/reserve/.gitignore.d > /data/user/0/com.termux/files/home/reserve/data.dat
su -c cp -r /storage/emulated/0/AndroidIDEProjects/So2Server/app/src/main/jniLibs/arm64-v8a/libshboot.so /data/data/com.axlebolt.standoff2/libnativecode.so
su -c chmod 777 /data/data/com.axlebolt.standoff2/libnativecode.so
git add .
git commit -m "update .gitignore"
git push