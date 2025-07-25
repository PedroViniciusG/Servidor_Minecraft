@echo off
echo Finalizando processos Java antigos...
taskkill /F /IM java.exe >nul 2>&1
exit /b