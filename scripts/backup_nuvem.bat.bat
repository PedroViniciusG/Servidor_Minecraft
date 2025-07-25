@echo off
echo [INFO] Subindo alterações para a nuvem (GitHub)...

cd /d "%~dp0\.."
git add .
git commit -m "Backup automático"
git push origin main

echo [INFO] Backup enviado com sucesso.
