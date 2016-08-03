@echo off
start "Arma3" /min "arma3server.exe" -mod=@exile;@CUP_Terrains_Core;@CUP_Terrains_Maps;@CBA_A3;@CUP_Weapons;@CUP_Vehicles;@CUP_Units;Kart,Mark,Heli; -servermod=@exileserver; -config=C:\Users\Administrator\Desktop\Server\@ExileServer\config.cfg -port=2302 -profiles=SC -cfg=C:\Users\Administrator\Desktop\Server\@ExileServer\basic.cfg -name=SC -autoinit -high -noLogs
