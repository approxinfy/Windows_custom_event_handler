@echo off
setlocal

:loop
echo %time% >> time.txt
timeout /t 60
goto :loop