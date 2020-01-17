echo off
color 4
title Fast - Host
:menu
mode con: cols=69 lines=18
cls
SETLOCAL ENABLEDELAYEDEXPANSION
echo.
echo      ______           __              __  __           __ 
echo     / ____/___ ______/ /_            / / / /___  _____/ /_
echo    / /_  / __ `/ ___/ __/  ______   / /_/ / __ \/ ___/ __/
echo   / __/ / /_/ (__  ) /_   /_____/  / __  / /_/ (__  ) /_  
echo  /_/    \__,_/____/\__/           /_/ /_/\____/____/\__/  
echo.    
echo [ 1 ] Setup Wi-Fi
echo [ 2 ] Start Wi-Fi
echo [ 3 ] Stop Wi-Fi
echo [ 4 ] Settings
echo.
echo [ x ] Exit
echo.                                        
set /p "op=>> "
IF "%op%" == "1" GOTO setup
IF "%op%" == "2" GOTO start
IF "%op%"  == "3" GOTO stop
IF "%op%"  == "4" GOTO settings
IF "%op%"  == "x" GOTO exit
IF not "%op%"  == "1" IF not "%op%"  == "2" IF not "%op%"  == "3" IF not "%op%"  == "4" IF not "%op%" == "x" GOTO menu
:setup
cls
echo.
echo      ______           __              __  __           __ 
echo     / ____/___ ______/ /_            / / / /___  _____/ /_
echo    / /_  / __ `/ ___/ __/  ______   / /_/ / __ \/ ___/ __/
echo   / __/ / /_/ (__  ) /_   /_____/  / __  / /_/ (__  ) /_  
echo  /_/    \__,_/____/\__/           /_/ /_/\____/____/\__/  
echo. 
set /p "ssid=Wi-Fi Ssid >> "
set /p "pass=Wi-Fi Password >> "
netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%pass%
cls
goto menu
:start
cls
netsh wlan start hostednetwork
goto menu
:stop
cls
netsh wlan stop hostednetwork
goto menu
:settings
mode con: cols=69 lines=35
cls
netsh wlan show hostednetwork
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo      ______           __              __  __           __ 
echo     / ____/___ ______/ /_            / / / /___  _____/ /_
echo    / /_  / __ `/ ___/ __/  ______   / /_/ / __ \/ ___/ __/
echo   / __/ / /_/ (__  ) /_   /_____/  / __  / /_/ (__  ) /_  
echo  /_/    \__,_/____/\__/           /_/ /_/\____/____/\__/  
echo. 
echo [ 1 ] Menu
echo. 
set /p "op=>> "
IF "%op%" == "1" GOTO menu
IF not "%op%"  == "1" GOTO settings
:exit
exit
