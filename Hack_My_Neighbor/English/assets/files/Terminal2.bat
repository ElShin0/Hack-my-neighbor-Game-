@echo off
echo Remote Terminal
:cmd
color 02
echo.
set /p cdo=Command: 
if %cdo%==start-e (goto start-e)
if %cdo%==ipconfig (goto Ipconfig)
if %cdo%==help (goto help)
if %cdo%==dir (goto dir)
if %cdo%==ls (goto dir)
if %cdo%==cls (goto cls)
if %cdo%==whoami (goto whoami)
goto error1

:cls
cls
echo Remote Terminal
goto cmd

:help
echo.
echo commands:
echo dir (show directories and files in the current directory)
echo whoami (see current permissions)
echo ipconfig (view wifi network status)
echo start-e (start browser)
echo cls (clear screen)
goto cmd

:whoami
echo Pancho/Admin_Remote
goto cmd

:dir
echo.
echo           Photos.jpg
echo           Music.mp3
echo Dir:      Films
goto cmd

:Ipconfig
echo.
echo Ip: 142.250.65.142
echo Mac: fe80::7ab2:13ff:fe67:a542
echo Open ports: 22
echo Closed port: 0
echo wifi: true
echo.
goto cmd

:start-e
cls
echo (with internet connection)
echo ethernet explorer
echo.
set /p web=Browser: 
if %web%==malware (goto Dvirus)
goto error2

:Dvirus
cls
echo (with internet connection)
echo Ethernet Explorer: Search/Virus
echo.
echo free virus download
echo Malware Download zip
echo Download this virus and destroy your pc
echo (caution) Destructive malware
echo.
pause
cls
echo (with internet connection)
echo Ethernet Explorer: Downloads
echo.
echo Malware
echo.
pause
cls
echo installing
timeout /t 5 /nobreak>nul
cls
echo "Virus" insta
timeout /t 1 /nobreak>nul
cls
echo "Virus" installed suc
timeout /t 1 /nobreak>nul
cls
echo "Malware" installed successfully
timeout /t 3 /nobreak>nul
cls
echo Error in the system
cls
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo Fatal error
echo (press a key to disconnect from the remote terminal)
pause>nul
cls
echo Fatal error
echo (disconnected)
echo.
echo The End
echo thanks for playing
echo Created By: RiAgHe
echo %date%>end2
pause>nul
exit

:error1
echo.
echo "%cdo%" it is not recognized as an internal or external command.
echo.
goto cmd

:error2
cls
echo Web page not found
echo.
pause
goto cmd