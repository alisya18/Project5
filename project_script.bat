@echo off
:: Mengaktifkan personalisasi dasar
color 0A
title My Command Center - Menu Utama
mode 80,25

:MENU_UTAMA
cls
echo.
echo ===================================
echo   MY COMMAND CENTER - PILIH ALAT
echo ===================================
echo.
echo [1] Tes Koneksi (Ping Google)
echo [2] Lihat Konfigurasi Jaringan (IPConfig)
echo [3] Buka Kalkulator (Calc)
echo [4] Buka Notepad
echo [5] Keluar
echo.
set /p PILIHAN="Masukkan pilihan (1-5): "

if "%PILIHAN%"=="1" goto PING
if "%PILIHAN%"=="2" goto IPCONFIG
if "%PILIHAN%"=="3" goto CALC
if "%PILIHAN%"=="4" goto NOTEPAD
if "%PILIHAN%"=="5" goto KELUAR

echo.
echo Pilihan tidak valid. Silakan coba lagi.
pause
goto MENU_UTAMA

:PING
cls
echo.
echo Melakukan Ping ke Google...
ping google.com -n 4
pause
goto MENU_UTAMA

:IPCONFIG
cls
echo.
echo Menampilkan Konfigurasi Jaringan...
ipconfig /all
pause
goto MENU_UTAMA

:CALC
start calc.exe
goto MENU_UTAMA

:NOTEPAD
start notepad.exe
goto MENU_UTAMA

:KELUAR
cls
echo.
echo Terima kasih telah menggunakan My Command Center.
echo.
exit