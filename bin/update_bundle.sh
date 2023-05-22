#!/bin/bash

cd console
java -jar CMsport_ECU_autoupdate.jar version

# https://github.com/CMsport_ECU/CMsport_ECU/issues/2601
chmod +x ../bin/*.sh
