@echo off
setlocal enabledelayedexpansion

rem Ruta de la carpeta
set carpeta=C:\temp

rem Recorrer todos los archivos en la carpeta
for %%F in (%carpeta%\*) do (
    rem Obtener el nombre del archivo y la extensión
    set archivo=%%~nxF
    set nombre=%%~nF
    set extension=%%~xF

    rem Truncar el nombre a 7 caracteres
    set nombreTruncado=!nombre:~0,7!

    rem Concatenar el nombre truncado con la extensión
    set nuevoNombre=!nombreTruncado!!extension!

    rem Renombrar el archivo
    ren "%%F" "!nuevoNombre!"
)

echo Renombrado completado.
