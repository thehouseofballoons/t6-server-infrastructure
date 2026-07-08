@echo off
:loop
echo [INFRASTRUCTURE] Initializing T6 Dedicated Server Instance...
:: Replace the line below with your actual Plutonium/CB execution path if needed later
start /wait plutonium-bootstrapper-win32.exe t6zm +set sv_config "dedicated.cfg" +key "YOUR_KEY_HERE"
echo [WARNING] Server instance terminated or crashed. Restarting in 5 seconds...
timeout /t 5
goto loop