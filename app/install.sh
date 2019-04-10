#!/bin/bash
echo "......Updating Linux..."
sudo apt update && sudo apt upgrade -y
sudo apt install mc -y
if [ "$1" == "-d" ]
  then
    echo "......Deleting node_modules..."
    sudo rm -rf ./node_modules
    echo "......Deleting vendor..."
    sudo rm -rf ./vendor
    echo "......Deleting cache, log and session files..."
    sudo rm -rf ./var/cache/*
    sudo rm -rf ./var/log/*
    sudo rm -rf ./var/sessions/*
fi
echo "......Installing composer dependencies..."
composer install
echo "......Installing yarn dependencies..."
yarn install
yarn dev
echo "......Installing migrations..."
php bin/console doctrine:migration:migrate
echo "......Installing fixtures..."
php bin/console doctrine:fixtures:load
