@echo off
:start
cls
echo --------------------------------------
echo. 
echo          GUI Conversion Tool
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
xcopy /E /Y Light\gui "..\Slimefun Beautified\assets\minecraft\optifine\cit\gui"
goto start


:dark
xcopy /E /Y Dark\gui "..\Slimefun Beautified\assets\minecraft\optifine\cit\gui"
goto start


:error
echo %Input% is not a valid option
pause
goto :start


:exit
exit