@echo off
:Start
cd..
cd library
set "LIB=%cd%"
cd..
cd System
cd update/nag-main
:Boot

:Main
cls
echo /==========================\
echo  Install an App          (1)
echo  Manage Apps             (2)
echo  Repair LR ILT           (3)
echo  Exit                    (4)
echo \==========================/
choice /c 1234 /n /m " "
if %errorlevel% equ 1 goto AppList
if %errorlevel% equ 2 goto Manage
if %errorlevel% equ 3 goto Repair
if %errorlevel% equ 4 goto Exit

:AppList
cd Apps
cls
echo /==========================\
type AppList.txt
echo \==========================/
set /p "AppName=Type the Apps name you wish to install >>"
:install
cd "%AppName%"
cls
echo /==========================\
echo  %AppName%   
echo.
echo  Install                 (1)
echo  Return                  (2)
echo \==========================/
choice /c 1234 /n /m " "
if %errorlevel% equ 1 goto runinstall

cd..
cd..
goto Main
:runinstall
xcopy /s /e "%cd%" "%LIB%"
cls
echo Success!
timeout 5 >nul
exit


:Manage
cls
echo Not availible at this time...
pause
goto Main


:Repair
cd ILT
cls
cls
echo /==========================\
echo Install Options
echo.
echo Troubleshooter           (1)
echo Install Repair ILT       (2)
echo Return                   (3)
echo \==========================/
choice /c 1234 /n /m " "
if %errorlevel% equ 1 goto TRB
if %errorlevel% equ 2 goto IRT
if %errorlevel% equ 3 goto Exit

:TRB
echo This feature will be availible in full release. Please proceed to Install Repair instead!
pause
goto Exit
:IRT
start ILT.url
echo Thank you for you continued support on this project! If you need any extra help, please ask an Administrator on our Github and ensure you report the error! Press any key to terminate program!
pause >nul
exit

:Exit
exit