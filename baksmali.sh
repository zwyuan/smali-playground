#!/bin/bash

IN_APK=app/build/outputs/apk/debug/app-debug.apk
OUT_DIR=app/src/main/smali

KEYSTORE=example.jks
KEYSTOREPW=mobileinsight
SIGNKEY=mi-key
SIGNKEYPW=mobileinsight

PKG_NAME=edu.ucla.cs.zyuan.apps.smaliplayground
ACTIVITY=MainActivity
DBG_PORT=8700

apktool d -o $OUT_DIR $IN_APK -f
