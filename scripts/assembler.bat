@echo off
:start
echo --------------------------------------
echo. 
echo             Assembler Tool
echo. 
echo --------------------------------------
echo.
echo     Light(1)    Dark(2)     Exit(3)
echo.
set /p Input=Selection: 
if /I "%Input%" == "1" goto light
if /I "%Input%" == "2" goto dark
if /I "%Input%" == "3" goto exit
if /I "%Input%" == "exit" goto exit
goto error


:light
mkdir temp
xcopy /E "..\" temp
xcopy /E /y light\gui temp\assets\minecraft\optifine\cit\gui
xcopy /y light\pack.mcmeta temp
if exist "*.zip" (del *.zip)
7z a -tzip "Slimefun Beautified" ./temp/*
rmdir /s /q temp
goto start


:dark
mkdir temp
xcopy /E "..\" temp
xcopy /E /y dark\gui temp\assets\minecraft\optifine\cit\gui
xcopy /y dark\pack.mcmeta temp
if exist "*.zip" (del *.zip)
7z a -tzip "Slimefun Beautified" ./temp/*
rmdir /s /q temp
goto start


:error
echo %Input% is not a valid option
pause
goto :start


:exit
exit