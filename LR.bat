@echo off

rem OPTIONS DO NOT TOUCH IF YOU ARE DUMB

set "IsDev=0"
rem if 1, sets to true. If 0 sets to false.








title LR : In Line inTerpreter 
:Boot
mode 150,40
set "space= "
set "hand1=/"
set "hand2=\"
del HasBoot
cd System
start /min Init.bat
cd..
:loop
@
if "%hand2%" neq "/" ( set "hand2=/" ) else ( set "hand2=\" )

rem This IS quicker than a ping for 2 packets....
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul
ping 127.0.0.1 -n 1 >nul

cls
echo  Little Robotics ILT 
echo ===================================================================-----------
echo.
echo  "Unlocking possibilities and empowering developers. One command at a time."
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo %space% iOi
echo %space% %hand2%l%hand1%
echo %space% / \
echo ========o====-----------===========o=====--------===---=====o=====-----=--===
set "space=%space% "
if "%space%" equ "                                                                          " set "space= " 

if "%hand1%" equ "\" ( set "hand1=/" ) else ( set "hand1=\" )


findstr /m "true" HasBoot >nul
if %errorlevel%==0 (
goto endloop
 )

ping 127.0.0.1 -n 1 >nul
goto loop
goto loop
:endloop
set "home=%cd%"








findstr /m "true" HasInit >nul
if %errorlevel%==0 (
Goto Mainloop
 )
:Init
color f3
cls
title LR : Setup
echo Little Robotics : In Line inTerpreter edition
echo =====================================================================================
echo.
echo.
echo           Instal Little Robotics ( 1 )
echo.
echo.
echo           Troubleshoot a current Little Robotics ILT ( 2 )
echo.
echo.
echo.
choice /c 12 /n /m " "
if %errorlevel% equ 2 goto troubleshoot
cls
if %IsDev% equ 1 ( 
echo /====================================================================================================================================================\
echo.
echo Little Robotics In Line inTerpreter License
echo.
echo.
type tms.dll
echo.
echo.
echo \====================================================================================================================================================/
pause >nul
 )
mode 150,19
cls


echo /====================================================================================================================================================\
echo.
echo Little Robotics In Line inTerpreter Copyright
echo.
echo.
type tms2.dll
echo.
echo.
echo \====================================================================================================================================================/
ping 127.0.0.1 -n 15 >nul
cls
ping 127.0.0.1 -n 2 >nul
echo /====================================================================================================================================================\
echo.
echo Little Robotics In Line inTerpreter Copyright
echo.
echo.
type tms2.dll
echo.
echo.
echo \====================================================================================================================================================/
cls
ping 127.0.0.1 -n 2 >nul
cls
echo /====================================================================================================================================================\
echo.
echo Little Robotics In Line inTerpreter Copyright
echo.
echo.
type tms2.dll
echo.
echo.
echo \====================================================================================================================================================/
cls
mode 150,65
echo /====================================================================================================================================================\
echo.
echo Little Robotics In Line inTerpreter License
echo.
echo.
type tms3.dll
echo.
echo To see more, visit https://github.com/Edowndotdown/Little-Robotics-In-Line-inTerpreter
echo \====================================================================================================================================================/
ping 127.0.0.1 -n 60 >nul
cls
mode 150,19
echo /====================================================================================================================================================\
echo.
echo Little Robotics In Line inTerpreter Copyright
echo.
echo.
type tms4.dll
echo.
echo.
echo \====================================================================================================================================================/
ping 127.0.0.1 -n 15 >nul

echo true >HasInit

echo Successfully installed Little Robotics ILT
echo To start using ILT, the program must be terminated. Strike any key to do so.
goto Exit

:troubleshoot
echo Unable to troubleshoot / find a troubleshooter
pause
goto Exit
:Mainloop
cls
type Version.log 


rem Finalize init
set output=false


rem start ILT here

cls
echo   Little Robotics ILT for Windows Systems.
echo   ========================================
echo.
goto main
:volumes

set "curcd=%cd%"
cd "%home%/Volumes"
type Mounts.dll
cd "%curcd%"
goto main





:main

set /p "usrinput=%username% @ %cd% >>>"

if "%usrinput%" equ "help" type LR.HELP && goto main
if "%usrinput%" equ "clear" cls && goto main
if "%usrinput%" equ "cls" cls && goto main
if "%usrinput%" equ "reload" cls && cd "%home%" && start LR.bat && exit
if "%usrinput%" equ "volumes"  goto volumes
if "%usrinput%" equ "list"  dir/w
if "%usrinput%" equ "init" set "curcd=%cd%" && cd "%home%/System" && start init.bat && ping 127.0.0.1 -n 2 >nul && cd "%curcd%" && goto main
if "%usrinput%" equ "store" set "curcd=%cd%" && cd "%home%/System" && start store.bat && ping 127.0.0.1 -n 2 >nul && cd "%curcd%" && goto main



@echo on
%usrinput%
@echo off



goto main


:Exit
rem exit
pause