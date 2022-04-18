@echo off
title Terminal de %username%
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
set /p cdo=Comando: 
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
echo Bienbenido al sistema de programacion de usb
echo Vercion %random%
echo.
set /p a=Nombre del usb:
set /p aa=Modo:
set /p aaa=Dispositivo:
cls
echo Compilando
timeout /t 1 /nobreak>nul
cls
echo Compilando.
timeout /t 1 /nobreak>nul
cls
echo Compilando..
timeout /t 1 /nobreak>nul
cls
echo Compilando...
timeout /t 1 /nobreak>nul
cls
echo Compilando
timeout /t 1 /nobreak>nul
cls
echo Compilando.
timeout /t 1 /nobreak>nul
cls
echo Compilando..
timeout /t 1 /nobreak>nul
cls
echo Compilando...
timeout /t 1 /nobreak>nul
cls
echo Compilado :)
echo.
echo Precione una tecla para enviar usb al vecino
pause>nul
cls
echo enviado
timeout /t 2 /nobreak>nul
cls
echo *ding dong*
timeout /t 2 /nobreak>nul
echo Vecino: oh?, quien sera?
timeout /t 2 /nobreak>nul
echo Vecino: Un usb?
timeout /t 2 /nobreak>nul
echo Vecino: veamos que es
timeout /t 2 /nobreak>nul
echo Vecino: Que?!!!
timeout /t 1 /nobreak>nul
echo Vecino: Mi pc dejo de funcionar
timeout /t 1 /nobreak>nul
echo Vecino: NOOOOOOO
timeout /t 2 /nobreak>nul
echo.
echo FIN
echo Gracias por jugar
echo Creado por: RiAgHe
echo %date%>end3
pause>nul
exit

:ssh
echo.
if %opp%==22 (goto ssh-p)
echo El puerto actualmente avierto no permite ssh
echo (prueba cambiar de puerto)
goto cmd

:ssh-p
set /p sshport=Puerto:
if %sshport%==21 (goto ssh-u)
if %sshport%==22 (goto ssh-u)
if %sshport%==25 (goto ssh-u)
if %sshport%==80 (goto ssh-u)
if %sshport%==110 (goto ssh-u)
if %sshport%==443 (goto ssh-u)
if %sshport%==3306 (goto ssh-u)
if %sshport%==5000 (goto ssh-u)
echo El puerto no es valido
goto cmd

:ssh-u
set /p sship=ip:
if %sship%==142.250.65.142 (goto ssh-ok)
echo ip no valida
goto cmd

:ssh-ok
cls
echo coneccion satisfactoria
title Terminal de Pancho
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
echo biscando ips cercanas... espere por favor
timeout /t 5 /nobreak>nul
echo.
echo ips encontradas: 142.250.65.142
set nst2=142.250.65.142
echo.
goto cmd
:ipdelete
if %sudo%==false (goto unsudo)
set /p nip=Ip que decea borrar: 
if %nip%==142.250.65.142 (goto y)
:n
echo no puede borrar esa ip porque no existe en el netstat
goto cmd
:y
cls
echo ip borrada exitosamente
goto ending

:unsudo
echo.
echo No puedes acceder ya que no eres super usuario
goto cmd

:cls
cls
echo Terminal
if %sudo%==true (echo Super usuario)
goto cmd

:sudo
if %sudo%==true (goto issudo)
cls
echo Para dar derechos de super usuario introcude la contrasena
echo.
set /p spass=Contrasena: 
if %spass%==1011 (goto true)
cls
echo Incorrecto
echo.
pause
goto sudo

:issudo
echo.
echo Tu ya eres super usuario
goto cmd

:true
cls
echo Contrasena correcta
set sudo=true
set who=admin
echo Ya eres super usuario
goto cmd

:help
echo.
echo comandos:
echo help (Buscar ayuda)
echo dir (mostrar directorios y archivos en el directorio actual)
echo whoami (ver los permisos actuales)
echo ipconfig (ver estado de la red wifi)
echo newport (cambiar de puerto)
echo start-e (iniciar explorador)
echo cls (limpiar la pantalla)
echo netstat (ver la coleccion de ips)
echo sudo (dar permisos de super usuario (requiere contrasena))
if exist end1 (echo "ssh (coneccion a terminal remota)")
if exist end2 (echo "usbkiller (programar un usb)")
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
echo           mision.txt
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
echo puertos aviertos: %opp%
echo puerto cerrados: %ocp%
echo.
echo pulsa una tecla para intercambiar los puertos
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
echo puertos intercambiados correctamente
echo.
echo nuevos puertos aviertos: %opp%
echo nuevos puerto cerrados: %ocp%
goto cmd

:start-e
cls
if %opp%==52400 (goto web)
cls
echo (Sin conexion a internet)
echo Ethernet Explorer
echo.
echo (prueba cambiar de puerto)
echo.
pause
goto cmd

:web
cls
echo (Con conexion a internet)
echo Ethernet Explorer
echo.
set /p web=Buscador: 
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
echo (Con conexion a internet)
echo Ethernet Explorer: https://github.com/Mc-zet4/Ethernet-Explorer.git
echo.
echo .git
echo paswords
echo comands
echo.
set /p git=Moverse a: 
if %git%==.git (goto cmd)
if %git%==paswords (goto paswords)
if %git%==comands (goto comands)else (goto error2)

:paswords
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
echo   comandos secretos:
echo    ipfinder (encontrar ips cercanas)
echo    ipdelete (borrar ips)
echo.
pause
goto github

:error1
echo.
echo "%cdo%" no se reconoce como un comando interno o externo.
echo.
goto cmd

:error2
cls
echo No se encontro la pagina web
goto github

:error3
cls
echo No se encontro la pagina web
echo.
pause
goto web

:ending
timeout /t 2 /nobreak>nul
echo.
echo Y asi el vecino dejo de molestar, poner musica en volumen alto
echo y alejo a su perro de tu jardin
timeout /t 3 /nobreak>nul
echo.
echo FIN
echo Gracias por jugar
echo Creado por: RiAgHe
echo %date%>end1
pause>nul
exit