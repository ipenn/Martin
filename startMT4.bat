:RESTART
tasklist | find /C "terminal.exe" > temp.txt
set /p num= < temp.txt
del /F temp.txt
echo %num%
if "%num%" == "0" start /D "C:\Program Files (x86)\MetaTrader 4 Terminal" terminal.exe
ping -n 10 -w 2000 0.0.0.1 > temp.txt
del /F temp.txt
goto RESTART