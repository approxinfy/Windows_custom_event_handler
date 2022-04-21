:stop
sc stop "update_my_time"

rem cause a ~10 second sleep before checking the service state
ping 127.0.0.1 -n 10 -w 1000 > nul

sc query "update_my_time" | find /I "STATE" | find "STOPPED"
if errorlevel 1 goto :stop
goto :start

:start
sc start "update_my_time"
