#!/bin/bash

#
# switch from one kind of bundle to another, for instance from microCMsportECU to Hellen72
#

if [ -z "$1" ]; then
	echo "New bundle name expected"
	exit 1
fi

BUNDLE=$1
CURRENT=${PWD##*/}
CURRENT=${CURRENT:-/}
CURRENT_BRANCH=$(echo "$CURRENT" | cut -d '.' -f 2)
CURRENT_BUNDLE=$(echo "$CURRENT" | cut -d '.' -f 3)
cd ..
mv "CMsportECU.${CURRENT_BRANCH}.${CURRENT_BUNDLE}" "CMsportECU.${CURRENT_BRANCH}.${BUNDLE}"
cd "CMsportECU.${CURRENT_BRANCH}.${BUNDLE}"

rm -rf CMsportECU*bin
rm -rf CMsportECU*hex
rm -rf CMsportECU*dfu
rm -rf CMsportECU*ini
bash
