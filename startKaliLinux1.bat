@echo off

setlocal

cd .. && cd .. && cd Program Files\Oracle\VirtualBox

echo running...

VBoxManage startvm "KaliLinux"

echo done.

pause >nul
