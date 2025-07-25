@echo off
title Servidor Minecraft - Inicialização
echo Iniciando o servidor pela primeira vez...
echo.

REM Verifica se o server.jar existe
IF NOT EXIST server.jar (
    echo ERRO: server.jar não encontrado!
    echo Coloque o arquivo server.jar na mesma pasta deste iniciar.bat
    pause
    exit
)

REM Inicia o servidor com 2GB de RAM
java -Xmx4G -Xms2G -jar server.jar nogui

echo.
echo Servidor encerrado.
pause
