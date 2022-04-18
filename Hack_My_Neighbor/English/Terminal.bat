@echo off
title Terminal of %username%
cd assets
cd files
set nst1=---.---.--.---
set nst2=---.---.--.---
set who=guest
set sudo=false
set opp=22
set ocp=52400
echo Terminal
:cmd
color 02
echo.
set /p cdo=Command: 
if %cdo%==ipfinder (goto ipfinder)
if %cdo%==usbkiller (goto usbkiller)
if %cdo%==ssh (goto ssh)
if %cdo%==netstat (goto netstat)
if %cdo%==ipdelete (goto ipdelete)
if %cdo%==mision.txt (goto misiontxt)
if %cdo%==secret_files.zip (goto secret_fileszip)
if %cdo%==sudo (goto sudo)
if %cdo%==start-e (goto start-e)
if %cdo%==dir (goto dir)
if %cdo%==ls (goto dir)
if %cdo%==cls (goto cls)
if %cdo%==help (goto help)
if %cdo%==whoami (goto whoami)
if %cdo%==ping (goto ping)
if %cdo%==ipconfig (goto Ipconfig)
if %cdo%==newport (goto ports)else (goto error1)
goto cmd

:usbkiller
cls
echo Welcome to the usb programming system
echo Version %random%
echo.
set /p a=Usb name:
set /p aa=Mode:
set /p aaa=Device:
cls
echo Compiling
timeout /t 1 /nobreak>nul
cls
echo Compiling.
timeout /t 1 /nobreak>nul
cls
echo Compiling..
timeout /t 1 /nobreak>nul
cls
echo Compiling...
timeout /t 1 /nobreak>nul
cls
echo Compiling
timeout /t 1 /nobreak>nul
cls
echo Compiling.
timeout /t 1 /nobreak>nul
cls
echo Compiling..
timeout /t 1 /nobreak>nul
cls
echo Compiling...
timeout /t 1 /nobreak>nul
cls
echo compiled :)
echo.
echo Press a key to send usb to neighbor
pause>nul
cls
echo sent
timeout /t 2 /nobreak>nul
cls
echo *knock knock*
timeout /t 2 /nobreak>nul
echo Neighbor: oh?, who will it be?
timeout /t 2 /nobreak>nul
echo Neighbor: A usb?
timeout /t 2 /nobreak>nul
echo Neighbor: let's see what it is
timeout /t 2 /nobreak>nul
echo Neighbor: What?!!!
timeout /t 1 /nobreak>nul
echo Neighbor: My pc stopped working
timeout /t 1 /nobreak>nul
echo Neighbor: NOOOOOOO
timeout /t 2 /nobreak>nul
echo.
echo The End
echo thanks for playing
echo Created By: RiAgHe
echo %date%>end3
pause>nul
exit

:ssh
echo.
if %opp%==22 (goto ssh-p)
echo The open port does not allow ssh
echo (Try changing the port)
goto cmd

:ssh-p
set /p sshport=Port:
if %sshport%==21 (goto ssh-u)
if %sshport%==22 (goto ssh-u)
if %sshport%==25 (goto ssh-u)
if %sshport%==80 (goto ssh-u)
if %sshport%==110 (goto ssh-u)
if %sshport%==443 (goto ssh-u)
if %sshport%==3306 (goto ssh-u)
if %sshport%==5000 (goto ssh-u)
echo The port is invalid
goto cmd

:ssh-u
set /p sship=ip:
if %sship%==142.250.65.142 (goto ssh-ok)
echo The ip is invalid
goto cmd

:ssh-ok
cls
echo successful connection
title Pancho Terminal
Terminal2

:misiontxt
mision.txt
goto cmd

:secret_fileszip
secret_files.zip
goto cmd

:ipfinder
if %sudo%==false (goto unsudo)
echo.
echo searching for nearby ips... please wait
timeout /t 5 /nobreak>nul
echo.
echo ips found: 142.250.65.142
set nst2=142.250.65.142
echo.
goto cmd
:ipdelete
if %sudo%==false (goto unsudo)
set /p nip=Ip you want to delete:
if %nip%==142.250.65.142 (goto y)
:n
echo you can't delete that ip because it doesn't exist in netstat
goto cmd
:y
cls
echo ip deleted successfully
goto ending

:unsudo
echo.
echo You can't login as you are not a super user
goto cmd

:cls
cls
echo Terminal
if %sudo%==true (echo Super user)
goto cmd

:sudo
if %sudo%==true (goto issudo)
cls
echo To give superuser rights enter the password
echo.
set /p spass=Password: 
if %spass%==1011 (goto true)
cls
echo Incorrect
echo.
pause
goto sudo

:issudo
echo.
echo You are already a super user
goto cmd

:true
cls
echo Correct password
set sudo=true
set who=admin
echo You are already a super user
goto cmd

:help
echo.
echo commands:
echo dir (show directories and files in the current directory)
echo whoami (see current permissions)
echo ipconfig (view wifi network status)
echo newport (change port)
echo start-e (start browser)
echo cls (clear screen)
echo netstat (view ips collection)
echo sudo (give super user permissions (password required))
if exist end1 (echo "ssh (connection to remote terminal)")
if exist end2 (echo "usbkiller (program a usb)")
goto cmd

:netstat
echo.
echo %nst1%
echo %nst2%
goto cmd

:whoami
echo %username%/%who%
goto cmd

:dir
echo.
echo           mission.txt
echo           secret_files.zip
goto cmd

:Ipconfig
echo.
echo Ip: 142.250.65.110
echo Mac: 2607:f8b0:4012:811::200e
echo Open ports: %opp%
echo Closed port: %ocp%
if %opp%==52400 (echo Wifi: true)else (echo Wifi: false)
echo.
goto cmd

:ports
echo.
echo open ports: %opp%
echo closed ports: %ocp%
echo.
echo press a key to swap ports
echo.
pause>nul
echo.
if %opp%==22 (goto opp)else (goto ocp)
:opp
set opp=52400
set ocp=22
goto portR
:ocp
set opp=22
set ocp=52400
goto portR
:portR
echo ports swapped successfully
echo.
echo new open ports: %opp%
echo new closed ports: %ocp%
goto cmd

:start-e
cls
if %opp%==52400 (goto web)
cls
echo (no internet connection)
echo Ethernet explorer
echo.
echo (try to change port)
echo.
pause
goto cmd

:web
cls
echo (With internet connection)
echo Ethernet Explorer
echo.
set /p web=Browser: 
if %web%==https://www.youtube.com/ (goto yt)
if %web%==youtube.com (goto yt)
if %web%==www.youtube.com (goto yt)
if %web%==https://github.com/Mc-zet4/Ethernet-Explorer.git (goto github)
goto error3

:yt
start https://www.youtube.com/channel/UCw9NsQJWamZg3to94Fp3B8w/featured
goto web

:github
set nst1=140.82.114.4
cls
echo (With internet connection)
echo Ethernet Explorer: https://github.com/Mc-zet4/Ethernet-Explorer.git
echo.
echo .git
echo passwords
echo comands
echo.
set /p git=go to: 
if %git%==.git (goto cmd)
if %git%==passwords (goto passwords)
if %git%==comands (goto comands)else (goto error2)

:passwords
cls
echo back
echo.
echo   secret_files.zip: Im_in
echo.
pause
goto github

:comands
cls
echo back
echo.
echo   secret commands:
echo    ipfinder (find nearby ips)
echo    ipdelete (delete ips)
echo.
pause
goto github

:error1
echo.
echo "%cdo%" it is not recognized as an internal or external command.
echo.
goto cmd

:error2
cls
echo Web page not found
goto github

:error3
cls
echo Web page not found
echo.
pause
goto web

:ending
timeout /t 2 /nobreak>nul
echo.
echo And so the neighbor stopped bothering, play loud music
echo I kick your dog out of your garden
timeout /t 3 /nobreak>nul
echo.
echo The End
echo thanks for playing
echo Created By: RiAgHe
echo %date%>end1
pause>nul
exit