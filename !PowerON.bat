@echo off
color 0a
:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo Server monitored is not running, will be started now 
start "Arma3" /min "arma3server.exe" -mod=@exile;@CUP_Terrains_Core;@CUP_Terrains_Maps;@CBA_A3;@CUP_Weapons;@CUP_Vehicles;@CUP_Units;Kart,Mark,Heli; -servermod=@exileserver; -config=C:\Users\Administrator\Desktop\Server\@ExileServer\config.cfg -port=2302 -profiles=SC -cfg=C:\Users\Administrator\Desktop\Server\@ExileServer\basic.cfg -name=SC -autoinit -high -noLogs
echo Server started succesfully
goto started
:loop
cls
echo Server is already running, running monitoring loop
:started
C:\Windows\System32\timeout /t 10
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server.exe">NUL


:: start bec
set becpath="C:\Users\Administrator\Desktop\Server\Bec"
cd /d %becpath%
start "" "bec.exe" -f Config.cfg


if "%ERRORLEVEL%"=="0" goto loop
C:\Windows\System32\taskkill /im arma3server.exe
goto start