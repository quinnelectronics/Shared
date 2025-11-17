@echo off
setlocal

:: Get the directory where this batch file is located
set "SCRIPT_DIR=%~dp0"

:: Kill any running instances of Caffeine
taskkill /IM caffeine64.exe /F >nul 2>&1

:: Prompt user for duration
echo.
echo Select Caffeine duration:
echo 1 = 1 hour
echo 2 = 4 hours
echo 3 = 8 hours
echo 4 = 10 hours
echo 5 = 24 hours
echo.
set /p choice="Enter your choice (1-5): "

:: Set duration based on choice
if "%choice%"=="1" set "duration=60"
if "%choice%"=="2" set "duration=240"
if "%choice%"=="3" set "duration=480"
if "%choice%"=="4" set "duration=600"
if "%choice%"=="5" set "duration=1440"

:: Validate choice
if not defined duration (
    echo Invalid choice. Exiting.
    pause
    exit /b 1
)

:: Start Caffeine with selected duration
echo Starting Caffeine for %duration% minutes...
start "" "%SCRIPT_DIR%caffeine64.exe" -activefor:%duration%

endlocal