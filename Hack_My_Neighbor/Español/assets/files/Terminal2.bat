@echo off
echo Terminal Remota
:cmd
color 02
echo.
set /p cdo=Comando: 
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
echo Terminal Remota
goto cmd

:help
echo.
echo comandos:
echo help (Buscar ayuda)
echo dir (mostrar directorios y archivos en el directorio actual)
echo whoami (ver los permisos actuales)
echo ipconfig (ver estado de la red wifi)
echo start-e (iniciar explorador)
echo cls (limpiar la pantalla)
goto cmd

:whoami
echo Pancho/Admin_Remoto
goto cmd

:dir
echo.
echo           Fotos.jpg
echo           Musica.mp3
echo Dir:      Peliculas
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
echo (Con conexion a internet)
echo Ethernet Explorer
echo.
set /p web=Buscador: 
if %web%==malware (goto Dvirus)
goto error2

:Dvirus
cls
echo (Con conexion a internet)
echo Ethernet Explorer: Busqueda/Virus
echo.
echo Descargar virus gratis
echo Malware Download zip
echo Descarga este virus y destrulle tu pc
echo (Cuidado) Malware destructivo
echo.
pause
cls
echo (Con conexion a internet)
echo Ethernet Explorer: Descargas
echo.
echo Virus
echo.
pause
cls
echo instalando
timeout /t 5 /nobreak>nul
cls
echo "Virus" Se inst
timeout /t 1 /nobreak>nul
cls
echo "Virus" Se instalo c
timeout /t 1 /nobreak>nul
cls
echo "Virus" Se instalo correctamente
timeout /t 3 /nobreak>nul
cls
echo Error en el sistema
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
echo Error fatal
echo (pulsa una tecla para desconectar de la terminal remota)
pause>nul
cls
echo Error fatal
echo (desconectado)
echo.
echo FIN
echo Gracias por jugar
echo Creado por: RiAgHe
echo %date%>end2
pause>nul
exit

:error1
echo.
echo "%cdo%" no se reconoce como un comando interno o externo.
echo.
goto cmd

:error2
cls
echo No se encontro la pagina web
echo.
pause
goto cmd