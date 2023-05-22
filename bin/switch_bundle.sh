#!/bin/bash

#
# switch from one kind of bundle to another, for instance from microCMsport_ECU to Hellen72
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
mv "CMsport_ECU.${CURRENT_BRANCH}.${CURRENT_BUNDLE}" "CMsport_ECU.${CURRENT_BRANCH}.${BUNDLE}"
cd "CMsport_ECU.${CURRENT_BRANCH}.${BUNDLE}"

rm -rf CMsport_ECU*bin
rm -rf CMsport_ECU*hex
rm -rf CMsport_ECU*dfu
rm -rf CMsport_ECU*ini
bash
