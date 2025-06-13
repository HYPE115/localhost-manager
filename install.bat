@echo off
echo 1/5 - Debut du script
pause

echo 2/5 - Verification de Python...
python --version
if %ERRORLEVEL% neq 0 (
    echo ERREUR: Python non trouve
    pause
    exit /b
)
pause

echo 3/5 - Creation du venv...
python -m venv venv
if %ERRORLEVEL% neq 0 (
    echo ERREUR: Echec creation venv
    pause
    exit /b
)
pause

echo 4/5 - Activation du venv...
call venv\Scripts\activate.bat
if %ERRORLEVEL% neq 0 (
    echo ERREUR: Echec activation venv
    pause
    exit /b
)
pause

echo 5/5 - Installation des dependances...
python.exe -m pip install --upgrade pip
if exist requirements.txt (
    pip install -r requirements.txt
) else (
    echo AVERTISSEMENT: requirements.txt manquant
)
pause

echo 6/6 - Creation du fichier de configuration…
if not exist ".env" (
    echo # Configuration de Localhost Manager> .env
    echo NGROK_AUTH_TOKEN=>> .env
    echo # Obtenez un token sur https://dashboard.ngrok.com/get-started/your-authtoken>> .env
    echo PORT=5000>> .env
    echo # Configuration de la base de donnees SQLite>> .env
    echo DATABASE_URL=sqlite:///instance/localsites.db>> .env
    echo.
    echo Fichier .env cree avec les valeurs par defaut.
    echo N'oubliez pas d'ajouter votre token d'authentification Ngrok.
) else (
    echo Le fichier .env existe deja, il ne sera pas modifie.
)

echo.
echo =======================================
echo Installation terminee avec succes !
echo =======================================
echo.
echo Pour demarrer l'application, executez launch.bat
echo N'oubliez pas d'ajouter votre token Ngrok dans le fichier .env
echo avant de lancer l'application.
echo.
pause