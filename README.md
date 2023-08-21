# Как поднять

В корне проекта клонируем свой php проект в папку app

``git clone git@repo/repo.git ./app``

Для файла `up.sh` выполнить следущие команды

``sudo chmod +x ./up.sh``

``sudo ./up.sh``

**Сайт будет доступеy по адресу который указан в docker-compose.yml -> nginx**

Текущий: 172.15.0.2

Nginx настроен на /app/public/index.php

## Установка lp2

Выполняем команду ``make in``

``mkdir -p ./storage``

``cd storage``
``mkdir -p framework/{sessions,views,cache}``

``mkdir -p ./logs``

``chmod -R 775 framework``

``создать файл .env КОНФИГУРАЦИЮ ЗАПРОСИТЬ``

``composer install``
> Версия node задана в docker-compose.yml > php-fpm > env
>
``npm install -g bower``

``bower install``

``npm install``

``npm run build``

`` php artisan config:cache ``

``storage/logs нужно дать права 777``


> Данную конфигурацию можно адаптировать под другие проекты, поменяв IP адреса и название сети