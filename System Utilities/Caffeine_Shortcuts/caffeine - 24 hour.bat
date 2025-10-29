@echo off

:: Set the path to Caffeine executable
set "CAFFEINE_PATH=C:\_scripts\Scripts\caffeine"

:: Kill any running instances of Caffeine
taskkill /IM caffeine64.exe /F >nul 2>&1

:: Start Caffeine for 24 hours (1440 minutes)
start "" "%CAFFEINE_PATH%\caffeine64.exe" -activefor:1440
