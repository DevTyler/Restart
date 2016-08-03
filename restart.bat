@echo off
color 0a
echo.
echo KILL arma3server.exe
set serverkill="C:\Users\Administrator\Desktop\Server"
cd /d %serverkill%
taskkill /im arma3server.exe
echo.
echo Kill Bec.exe
set beckill="C:\Users\Administrator\Desktop\Server\Bec"
cd /d %beckill%
taskkill /im bec.exe

timeout 10

echo.
echo Starting Server
:: start the server..
set dayzpath="C:\Users\Administrator\Desktop\Server\"
cd /d %dayzpath%
start "" "startserver.bat"
echo.
echo Starting Bec
timeout 120
:: start bec
set becpath="C:\Users\Administrator\Desktop\Server\Bec"
cd /d %becpath%
start "" "bec.exe" -f Config.cfg
echo.
echo Server Started 100%

cls
@exit