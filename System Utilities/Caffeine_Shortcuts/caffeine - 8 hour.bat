@echo off

:: Set path to Caffeine directory
set "CAFFEINE_PATH=C:\_scripts\Scripts\caffeine"

:: Kill any running instances of Caffeine
taskkill /IM caffeine64.exe /F >nul 2>&1

:: Start Caffeine for 8 hours (480 minutes)
start "" "%CAFFEINE_PATH%\caffeine64.exe" -activefor:480
