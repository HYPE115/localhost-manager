# Localhost Manager

Un outil simple pour partager vos services locaux avec votre équipe de développement.

## 📁 Structure du Projet

```
localhost-manager/
├── templates/           # Fichiers de template HTML
│   └── index.html      # Page d'accueil de l'application
├── venv/               # Environnement virtuel Python
├── .env                # Fichier de configuration (à créer)
├── app.py             # Point d'entrée de l'application
├── install.bat         # Script d'installation Windows
├── launch.bat          # Script de lancement Windows
├── LICENSE            # Licence MIT
└── requirements.txt   # Dépendances Python
```

## 📜 Licence

Ce projet est sous licence [MIT](LICENSE).

## Fonctionnalités

- Création de tunnels sécurisés vers vos services locaux
- Interface web intuitive pour gérer les tunnels
- Mises à jour en temps réel
- Support pour HTTP, TCP et TLS
- Copie facile des URLs de partage

## Prérequis

- Python 3.7 ou supérieur
- Un compte [Ngrok](https://ngrok.com/) (gratuit)

## 🚀 Installation

1. Clonez ce dépôt ou téléchargez les fichiers
2. Installez les dépendances :
   ```
   pip install -r requirements.txt
   ```
3. Obtenez un token d'authentification Ngrok :
   - Créez un compte sur [ngrok.com](https://ngrok.com/)
   - Connectez-vous à votre tableau de bord
   - Copiez votre token d'authentification
   - Collez-le dans le fichier `.env` à la place de `votre_token_ngrok_ici`

## Utilisation

1. Lancez l'application :
   ```
   python app.py
   ```
2. Ouvrez votre navigateur à l'adresse : http://localhost:5000
3. Pour partager un service local :
   - Entrez le numéro de port du service
   - Sélectionnez le protocole (HTTP par défaut)
   - Cliquez sur "Créer le tunnel"
4. Partagez l'URL publique générée avec votre équipe

## Comment ça marche

L'application utilise Ngrok pour créer des tunnels sécurisés vers vos services locaux. Chaque tunnel reçoit une URL publique unique qui peut être partagée avec vos collègues. Le trafic est acheminé en toute sécurité via les serveurs de Ngrok jusqu'à votre machine locale.

## Sécurité

- Tous les tunnels sont sécurisés avec HTTPS
- Seuls les services que vous exposez explicitement sont accessibles
- Vous pouvez supprimer un tunnel à tout moment

## Personnalisation

Vous pouvez personnaliser l'application en modifiant les fichiers :
- `app.py` pour la logique du serveur
- `templates/index.html` pour l'interface utilisateur
- `static/css/styles.css` pour le style (si ajouté)

## Licence

Ce projet est sous licence MIT.
