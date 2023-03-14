FILE = docker-compose.yml

build:
		docker compose -f ${FILE} build

up:
		docker compose -f ${FILE} up

down:
		docker compose -f ${FILE} down

restart: down up