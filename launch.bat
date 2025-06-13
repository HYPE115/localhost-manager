@echo off
:: Script de lancement pour Localhost Manager

set "SCRIPT_DIR=%~dp0"

:: Vérification de l'environnement virtuel
if not exist "venv\Scripts\python.exe" (
    echo [ERREUR] Environnement virtuel introuvable
    echo Exécutez d'abord install.bat
    pause
    exit /b 1
)

:: Activation de l'environnement virtuel
call venv\Scripts\activate.bat
if %ERRORLEVEL% neq 0 (
    echo [ERREUR] Impossible d'activer l'environnement virtuel
    pause
    exit /b 1
)

:: Vérification du token Ngrok
if not exist ".env" (
    echo [ERREUR] Fichier .env manquant
    pause
    exit /b 1
)

:: Lancement de l'application
echo Démarrage de Localhost Manager...
echo L'application sera accessible à http://localhost:5000
echo Appuyez sur Ctrl+C pour arrêter le serveur
echo.

python app.py

if %ERRORLEVEL% NEQ 0 (
    echo [ERREUR] L'application s'est arrêtée avec le code %ERRORLEVEL%
    pause
)
