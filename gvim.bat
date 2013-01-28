@echo off
echo %~dp0
set dir=%~dp0

echo This install script works on Windows 7.

REM delete \ at end of dir
if "%dir:~-1%\" == "\\" (
    set dir=%dir:~0,-1%
)

setx CUSTOMVIMRUNTIME "%dir%" -m
echo $CUSTOMVIMRUNTIME setted.
setx MYVIMRC "%dir%\vimrc" -m 
echo $MYVIMRC setted.
set vimbackup="%HOME%\.vimbackup"
setx VIMBACKUP "%vimbackup%" -m
echo $VIMBACKUP setted.

pause