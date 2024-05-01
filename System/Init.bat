@echo off
set testdir=0
cd..
cd Volumes
del Mounts.dll
:loop
if %testdir% equ y set testdir=z
if %testdir% equ x set testdir=y
if %testdir% equ w set testdir=x
if %testdir% equ v set testdir=w
if %testdir% equ u set testdir=v
if %testdir% equ t set testdir=u
if %testdir% equ s set testdir=t
if %testdir% equ r set testdir=s
if %testdir% equ q set testdir=r
if %testdir% equ p set testdir=q
if %testdir% equ o set testdir=p
if %testdir% equ n set testdir=o
if %testdir% equ m set testdir=n
if %testdir% equ l set testdir=m
if %testdir% equ k set testdir=l
if %testdir% equ j set testdir=k
if %testdir% equ i set testdir=j
if %testdir% equ h set testdir=i
if %testdir% equ g set testdir=h
if %testdir% equ f set testdir=g
if %testdir% equ e set testdir=f
if %testdir% equ d set testdir=e
if %testdir% equ c set testdir=d
if %testdir% equ b set testdir=c
if %testdir% equ a set testdir=b
if %testdir% equ 0 set testdir=a

IF exist "%testdir%:/System Volume Information" ( echo %testdir%: >>Mounts.dll ) 
if %testdir% equ z goto endloop
goto loop
:endloop
cd..
cd System
start /wait /min Upd.bat
cd..
echo true > HasBoot
exit