#!/bin/bash

cd console
java -jar CMsport_ECU_autoupdate.jar release
echo Release update done.

# https://github.com/CMsport_ECU/CMsport_ECU/issues/2601
chmod +x ../bin/*.sh
