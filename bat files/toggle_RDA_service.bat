@echo off

set SERVICE_NAME=RustDesk 

:: Check the state of the service
sc query %SERVICE_NAME% | findstr "STATE" | find "RUNNING" >nul

if %errorlevel% equ 0 (
    echo Service is running. Stopping it.
    net stop %SERVICE_NAME%
) else (
    echo Service is not running. Starting it.
    net start %SERVICE_NAME%
)

timeout /t 5 >nul
