#!/bin/bash

cd console
java -jar CMsportECU_autoupdate.jar version

# https://github.com/CMsportECU/CMsportECU/issues/2601
chmod +x ../bin/*.sh
