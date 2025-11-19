@echo off
title MultiTool - by Heiva
chcp 65001 >nul

:menu
cls
call :banner
color a

echo.
echo    ══(1) Teams
echo   ║
echo   ║══(2) Google
echo   ║
echo   ║══(3) Roblox
echo   ║
echo   ╚══(4) JSP
echo.
set /p input=  ╚════════════════^> 

rem --- Lancer l'application selon le choix ---
if "%input%"=="1" (
    powershell -Command "$appid=(Get-StartApps | Where-Object {$_.Name -like '*Teams*'}).AppID; if ($appid) {Start-Process explorer.exe ('shell:appsFolder\' + $appid)} else {Write-Host 'Teams non trouve !'}"
)

if "%input%"=="2" (
    powershell -Command "$appid=(Get-StartApps | Where-Object {$_.Name -like '*Chrome*'}).AppID; if ($appid) {Start-Process explorer.exe ('shell:appsFolder\' + $appid)} else {Write-Host 'Chrome non trouve !'}"
)

if "%input%"=="3" (
    start "" explorer.exe shell:appsFolder\ROBLOXCorporation.RobloxGDK_55nm5eh3cm0pr!Game
)

if "%input%"=="4" (
    start "" explorer.exe shell:appsFolder\PuTTY_abcdefgh1234!PuTTY
)

rem --- Retour au menu sans redessiner la bannière ni changer la console ---
goto menu

:banner
echo.
echo.
echo                       ██╗  ██╗███████╗██╗██╗   ██╗ █████╗     ████████╗ ██████╗  ██████╗ ██╗             
echo                       ██║  ██║██╔════╝██║██║   ██║██╔══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║             
echo                       ███████║█████╗  ██║██║   ██║███████║       ██║   ██║   ██║██║   ██║██║             
echo                       ██╔══██║██╔══╝  ██║╚██╗ ██╔╝██╔══██║       ██║   ██║   ██║██║   ██║██║             
echo                       ██║  ██║███████╗██║ ╚████╔╝ ██║  ██║       ██║   ╚██████╔╝╚██████╔╝███████╗        
echo                       ╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝  ╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝    
