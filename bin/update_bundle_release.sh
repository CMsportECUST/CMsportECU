#!/bin/bash

cd console
java -jar CMsportECU_autoupdate.jar release
echo Release update done.

# https://github.com/CMsportECU/CMsportECU/issues/2601
chmod +x ../bin/*.sh
