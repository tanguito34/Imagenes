@echo off
cd /d "%~dp0"

REM Configurar usuario solo la primera vez
git config user.name "tanguito34"
git config user.email "tanguito34@users.noreply.github.com"

REM Inicializar el repositorio si no existe
IF NOT EXIST ".git" (
    git init
    git branch -M main
    git remote add origin https://github.com/tanguito34/imagenes.git
    git add .
    git commit -m "Primera subida de imágenes"
    git push --set-upstream origin main
) ELSE (
    git add .
    git commit -m "Actualización de imágenes"
    git push
)

pause

