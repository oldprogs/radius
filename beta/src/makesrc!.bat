@echo off
SET DELPHI_PATH=e:\delphi2005

echo * (1) Make new Radius build

"%DELPHI_PATH%\bin\dcc32" -DNT argus > ..\..\..\temp\res.txt
if errorlevel 1 goto error

echo * (2) Delete previous Radius build
if exist ..\..\..\exe\radius.exe del ..\..\..\exe\radius.exe
move ..\..\..\exe\argus.exe ..\..\..\exe\radius.exe
move ..\..\..\exe\argus.map ..\..\..\exe\radius.map

echo * (3) Delete temp files.
del ..\..\..\temp\*.* /q
goto exit

:error
echo * (2) Error occured. Exiting...
pause

:exit
exit
