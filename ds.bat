@ECHO OFF

if [%1]==[d] (
	copy "C:\Program Files (x86)\DontShutdown\ds-ds.ini" "C:\Program Files (x86)\DontShutdown\ds.ini" /y
	goto:correct
)

if [%1]==[s] (
	copy "C:\Program Files (x86)\DontShutdown\ds-screen.ini" "C:\Program Files (x86)\DontShutdown\ds.ini" /y
	goto:correct
)


echo usage:
echo.	ds d
echo.	ds s

goto:eof

:correct
	start "" "C:\Program Files (x86)\DontShutdown\ds.exe"