@ECHO OFF

if [%1]==[d] (
	copy "%~dp0ds-ds.ini" "%~dp0ds-exe.ini" /y
	goto:correct
)

if [%1]==[s] (
	copy "%~dp0ds-screen.ini" "%~dp0ds-exe.ini" /y
	goto:correct
)


echo usage:
echo.	ds d
echo.	ds s

goto:eof

:correct
	start "" "%~dp0ds-exe.exe"
