build:
	docker compose build --no-cache

up:
	docker compose up -d

in:
	docker compose exec php-fpm bash

down:
	docker compose down

rm:
	docker network rm lp2_net
	docker compose down --rmi all -v --remove-orphans

TABLE_NAME ?= $(shell bash -c 'read -p "Название таблицы: " tablename; echo tablename')
table:
	docker compose exec php-fpm php artisan make:migration $(TABLE_NAME)

migrate:
	docker compose exec php-fpm php artisan migrate

migrate-roll:
	docker compose exec php-fpm php artisan migrate:rollback





#mkdir -p /путь к проекту/storage
#cd storage
#mkdir -p framework/{sessions,views,cache}
#mkdir -p /путь к проекту/storage/logs
#chmod -R 775 framework
#
#composer install
#npm install -g bower
#bower install
#npm install
#npm run build
#
#потом создаем файл конфига .env
#php artisan config:cache
#[15:59]
#на storage/logs нужно дать права 777