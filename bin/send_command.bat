echo off
set arg1=%1
cd ../console
java -jar CMsport_ECU_console.jar send_command %arg1%
