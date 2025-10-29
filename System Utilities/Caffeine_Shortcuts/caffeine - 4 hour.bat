@echo off

:: Set path to Caffeine executable
set "CAFFEINE_PATH=C:\_scripts\Scripts\caffeine"

:: Kill any running instances of Caffeine
taskkill /IM caffeine64.exe /F >nul 2>&1

:: Start Caffeine for 4 hours (240 minutes)
start "" "%CAFFEINE_PATH%\caffeine64.exe" -activefor:240
