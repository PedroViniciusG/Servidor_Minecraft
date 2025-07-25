@echo off
setlocal

:: Caminho da pasta atual
set DIR=%~dp0

:: Sincronizar com o GitHub (baixar arquivos atualizados)
cd /d "%DIR%"
git reset --hard
git pull origin main

:: Matar processos Java antes de iniciar
set SCRIPTS_DIR=%DIR%scripts\
call "%SCRIPTS_DIR%matar_java.bat"

:: Restaurar mundo da nuvem (repositório)
call "%SCRIPTS_DIR%restaurar_nuvem.bat"

:: Iniciar o servidor
java -Xmx4G -Xms2G -jar "%DIR%server.jar" nogui

:: Backup automático após encerrar
call "%SCRIPTS_DIR%backup_nuvem.bat"

pause
