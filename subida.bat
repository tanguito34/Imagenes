@echo off
cd /d "%~dp0"

REM Inicializa Git solo la primera vez
IF NOT EXIST ".git" (
    git init
    git remote add origin https://github.com/tanguito34/imagenes.git
    git checkout -b main
)

git add .
git commit -m "Subida masiva de imágenes"
git push -u origin main

pause
