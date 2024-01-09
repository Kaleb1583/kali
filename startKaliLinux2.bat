@echo off
setlocal
cd .. && cd .. && cd Program Files\Oracle\VirtualBox

echo running...

set ORIGINAL_VM_NAME="KaliLinux"
set NEW_VM_NAME="KaliLinuxTEMP"

VBoxManage clonevm %ORIGINAL_VM_NAME% --name %NEW_VM_NAME% --register
VBoxManage startvm %NEW_VM_NAME%


set COMMAND=echo Run this to delete the vm you just CREATED: VBoxManage unregistervm %NEW_VM_NAME% --delete && start cmd /k "%COMMAND%" && set COMMAND=echo Run this to delete the vm you just CLONED: VBoxManage unregistervm %NEW_VM_NAME% --delete && start cmd /k "%COMMAND%"

echo done.
pause

