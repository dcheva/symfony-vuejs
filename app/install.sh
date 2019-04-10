#!/bin/bash
sudo apt update && sudo apt upgrade -y
composer install
yarn install
yarn dev
php bin/console doctrine:migration:migrate
php bin/console doctrine:fixtures:load
