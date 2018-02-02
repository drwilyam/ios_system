#!/bin/bash

IOS_SYSTEM_VER="1.0"

HHROOT="https://github.com/holzschu"

(cd "${BASH_SOURCE%/*}/Frameworks"
# ios_system
echo "Downloading ios_system.framework.zip"
curl -OL $HHROOT/ios_system/releases/download/v$IOS_SYSTEM_VER/release.tar.gz
( tar -xzf release.tar.gz && rm release.tar.gz && mv release/* . ) || { echo "ios_system failed to download"; exit 1; }
)




