@echo off
echo [INFO] Restaurando arquivos da nuvem (GitHub)...

cd /d "%~dp0\.."
git reset --hard
git pull origin main

echo [INFO] Arquivos restaurados com sucesso.
