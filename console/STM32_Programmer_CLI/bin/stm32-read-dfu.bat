java -jar ../../CMsport_ECU_console.jar reboot_dfu
echo Now sleeping before DFU
sleep 5

STM32_Programmer_CLI.exe -c port=usb1 -r 0x08000000 0x0100000 CMsport_ECU_dump.hex