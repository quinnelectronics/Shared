@echo off
setlocal

:: Get the directory where this batch file is located
set "SCRIPT_DIR=%~dp0"

:: Kill any running instances of Caffeine
taskkill /IM caffeine64.exe /F >nul 2>&1

:: Prompt user for duration in hours
echo.
set /p hours="Enter number of hours: "

:: Calculate duration in minutes
set /a duration=hours*60

:: Validate input
if %duration% LEQ 0 (
    echo Invalid input. Please enter a positive number.
    pause
    exit /b 1
)

:: Display selection and pause for confirmation
echo.
echo You selected: %hours% hours (%duration% minutes)
echo.
pause

:: Start Caffeine with selected duration
echo Starting Caffeine for %duration% minutes...
start "" "%SCRIPT_DIR%caffeine64.exe" -activefor:%duration%

endlocal