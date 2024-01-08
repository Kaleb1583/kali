@echo off
setlocal
cd ..
cd ..
cd Program Files\Oracle\VirtualBox

REM dir

REM ---


echo running...

VBoxManage startvm "KaliLinux"


choice /n /t 600 /d y >nul

    echo Key was Pressed

    VBoxManage controlvm "KaliLinux" poweroff

    REM - Other ways to turn off -
    REM VBoxManage controlvm "KaliLinux" acpipowerbutton
    REM VBoxManage controlvm "KaliLinux" savestate

    exit /b 0



echo done.
pause >nul
