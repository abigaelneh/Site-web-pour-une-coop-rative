# Site Web pour une Coopérative

## 🚀 Prérequis

- PHP 8.2 ou supérieur
- Composer
- MariaDB/MySQL
- Git

## 📦 Installation

### 1. Cloner le projet
```bash
git clone <URL_DU_REPO>
cd Site-web-pour-une-coop-rative
```

### 2. Installer les dépendances PHP
```bash
composer install
```

### 3. Configurer l'environnement
```bash
# Copier le fichier d'exemple
cp .env.example .env

# Générer la clé d'application
php artisan key:generate
```

### 4. Configurer la base de données

Modifier le fichier `.env` avec vos informations :
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=cooperative_db
DB_USERNAME=votre_utilisateur
DB_PASSWORD=votre_mot_de_passe
```

### 5. Créer la base de données
```bash
# Se connecter à MariaDB
sudo mysql

# Créer la base de données
CREATE DATABASE cooperative_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

# Créer un utilisateur (optionnel)
CREATE USER 'votre_utilisateur'@'localhost' IDENTIFIED BY 'votre_mot_de_passe';
GRANT ALL PRIVILEGES ON cooperative_db.* TO 'votre_utilisateur'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

### 6. Migrer la base de données
```bash
php artisan migrate
```

### 7. Lancer le serveur de développement
```bash
php artisan serve
```

L'application sera accessible sur `http://localhost:8000`

## 🛠️ Commandes utiles
```bash
# Lancer le serveur
php artisan serve

# Créer une migration
php artisan make:migration nom_de_la_migration

# Exécuter les migrations
php artisan migrate

# Annuler la dernière migration
php artisan migrate:rollback

# Créer un contrôleur
php artisan make:controller NomController

# Créer un modèle
php artisan make:model NomModele

# Vider le cache
php artisan cache:clear
php artisan config:clear
php artisan route:clear
```

## 📁 Structure du projet
```
├── app/                # Code de l'application
│   ├── Http/          # Contrôleurs et middlewares
│   └── Models/        # Modèles Eloquent
├── config/            # Fichiers de configuration
├── database/          # Migrations et seeders
├── public/            # Point d'entrée et assets publics
├── resources/         # Vues et assets à compiler
├── routes/            # Définition des routes
└── storage/           # Fichiers générés
```

## 🤝 Contribution

1. Créer une branche pour votre fonctionnalité
2. Faire vos modifications
3. Commiter avec des messages clairs
4. Pousser votre branche
5. Créer une Pull Request

## 📝 Licence

[Votre licence]
