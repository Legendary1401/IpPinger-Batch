:reset
@echo off 
color 4
prompt IpPinger@Ip~
title IpPinger By predator#7167
echo.
type logo.py
echo.
echo Type the ip adress
set /p IP=Enter IP=
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (
cls
type error.py
timeout 5  /NOBREAK
echo
cls
GoTo reset
)
set /a num= (%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top