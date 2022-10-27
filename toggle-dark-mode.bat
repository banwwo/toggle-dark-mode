@echo off
chcp 65001
cls

set path_us=HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize
set path_mch=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize

title Alternar entre Dark Mode o Light Mode

echo.
echo  [1] Light Theme
echo  [2] Dark Theme
echo.
set /p theme=" ¿Qué tema te gustaría usar? 1/2 -> "

if "%theme%"=="1" (
    reg add %path_us% /v AppsUseLightTheme /t REG_DWORD /d 1 /f /reg:32
    reg add %path_mch% /v AppsUseLightTheme /t REG_DWORD /d 1 /f /reg:32
)
if "%theme%"=="2" (
    reg add %path_us% /v AppsUseLightTheme /t REG_DWORD /d 0 /f /reg:32
    reg add %path_mch% /v AppsUseLightTheme /t REG_DWORD /d 0 /f /reg:32
)
