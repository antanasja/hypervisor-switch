@echo off

if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)

echo ===================================================================
echo                         Hypervisor switch
echo ===================================================================
echo  This program is free software. It comes without any warranty, to
echo  the extent permitted by applicable law. You can redistribute it
echo  and/or modify it under the terms of the Do What The Fuck You Want
echo  To Public License, Version 2, as published by Sam Hocevar. See
echo  http://www.wtfpl.net/ for more details.
echo ===================================================================

echo.

echo Chose an action:
echo  1: Start hypervisor
echo  2: Stop hypervisor
echo  e: Exit
choice /c 12e
echo.

IF %ERRORLEVEL% == 1 goto :start_hypervisor
IF %ERRORLEVEL% == 2 goto :stop_hypervisor
IF %ERRORLEVEL% == 3 exit

:start_hypervisor
    echo Starting hyperrvisor...
    BCdedit.exe /set hypervisorlaunchtype auto
    if %ERRORLEVEL% == 0 goto :restart
    goto :error

:stop_hypervisor
    echo Stopping hyperrvisor...
    BCdedit.exe /set hypervisorlaunchtype off
    if %ERRORLEVEL% == 0 goto :restart
    goto :error

:restart
    echo.
    echo Restart the computer now?
    choice /c yn
    IF %ERRORLEVEL% == 1 shutdown.exe /r /t 00 && exit
    IF %ERRORLEVEL% == 2 exit

:error
    echo.
    echo An error occurred. You should see additional output above.
    pause
    exit