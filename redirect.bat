@echo off

set url=https://www.adidas.fr/

tasklist | find /i "chrome.exe" >nul
if not errorlevel 1 (
    start chrome "%url%"
    exit
)

tasklist | find /i "msedge.exe" >nul
if not errorlevel 1 (
    start msedge "%url%"
    exit
)

tasklist | find /i "firefox.exe" >nul
if not errorlevel 1 (
    start firefox "%url%"
    exit
)

:: Sinon ouvre avec le navigateur par défaut
start "" "%url%"