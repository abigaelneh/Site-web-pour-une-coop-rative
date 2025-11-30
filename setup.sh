#!/bin/bash

echo "🚀 Installation du projet Laravel..."
echo ""

# Vérifier PHP
if ! command -v php &> /dev/null; then
    echo "❌ PHP n'est pas installé"
    echo "Installez PHP 8.2+ : sudo apt install php8.2"
    exit 1
fi

echo "✅ PHP $(php -v | head -n 1 | cut -d ' ' -f 2) détecté"

# Vérifier Composer
if ! command -v composer &> /dev/null; then
    echo "❌ Composer n'est pas installé"
    echo "Visitez : https://getcomposer.org/download/"
    exit 1
fi

echo "✅ Composer détecté"

# Installer les dépendances
echo ""
echo "📦 Installation des dépendances..."
composer install

# Copier .env
if [ ! -f .env ]; then
    echo ""
    echo "📝 Configuration de l'environnement..."
    cp .env.example .env
    php artisan key:generate
    
    echo ""
    echo "⚠️  IMPORTANT : Configurez votre fichier .env avec vos informations de base de données"
    echo ""
    echo "Ensuite, exécutez :"
    echo "  php artisan migrate"
    echo "  php artisan serve"
else
    echo ""
    echo "ℹ️  Le fichier .env existe déjà"
fi

# Permissions
chmod -R 775 storage bootstrap/cache

echo ""
echo "✅ Installation terminée !"
echo ""
echo "Prochaines étapes :"
echo "1. Configurez votre .env (base de données)"
echo "2. Créez la base de données"
echo "3. Lancez : php artisan migrate"
echo "4. Lancez : php artisan serve"
echo ""
