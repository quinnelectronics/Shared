@echo off

:: Set the path to the directory containing caffeine64.exe
set "CAFFEINE_PATH=C:\_scripts\Scripts\caffeine"

:: Kill any running instances of Caffeine
taskkill /IM caffeine64.exe /F >nul 2>&1

:: Start Caffeine for 1 hour (600 minutes)
start "" "%CAFFEINE_PATH%\caffeine64.exe" -activefor:600

