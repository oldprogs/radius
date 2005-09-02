@echo off
SET DELPHI_PATH=e:\delphi2005

echo * (1) Make new Radius build

"%DELPHI_PATH%\bin\dcc32" -DNT argus > ..\..\_temp\res.txt
if errorlevel 1 goto error

echo * (2) Delete previous Radius build
if exist ..\..\_exe\radius.exe del ..\..\_exe\radius.exe
move ..\..\_exe\argus.exe ..\..\_exe\radius.exe
move ..\..\_exe\argus.map ..\..\_exe\radius.map

echo * (3) Delete temp files.
del ..\..\_temp\*.* /q
goto exit

:error
echo * (2) Error occured. Exiting...
pause

:exit
exit
