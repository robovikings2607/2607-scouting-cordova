#!/bin/bash

try() {
cd www
g=`git pull` 
cd ..
if [ ${#g} -lt 20 ] ; then
    return
fi
cordova build android
scp platforms/android/app/build/outputs/apk/debug/app-debug.apk me:/home/john/Shortcuts/www/html/

}

while true ; do
    echo 'trying'
    try
    sleep 1
done
