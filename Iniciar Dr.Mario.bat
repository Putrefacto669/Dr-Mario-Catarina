@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo   Videojuegos Dr.Mario - Servidor local 3D
echo ============================================
echo.
echo Iniciando servidor en http://127.0.0.1:8000 ...
where python >nul 2>nul
if %errorlevel%==0 (
  start "Servidor Dr.Mario" /min python -m http.server 8000 --bind 127.0.0.1
) else (
  start "Servidor Dr.Mario" /min py -3 -m http.server 8000 --bind 127.0.0.1
)
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8000/index.html"
echo.
echo Listo. Se abrio el navegador en http://127.0.0.1:8000
echo IMPORTANTE: usa esa direccion (http://127.0.0.1:8000), NO el archivo.
echo Para detener el servidor, cerra la ventana "Servidor Dr.Mario".
echo.
pause
