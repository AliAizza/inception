FILE = srcs/docker-compose.yml

build:
		sudo docker-compose -f  ${FILE} build

up:
		sudo docker-compose -f ${FILE} up

down:
		sudo docker-compose -f ${FILE} down

clean:
		sudo rm -rf data/wp/*
		sudo rm -rf data/db/*
		sudo docker system prune -af
		# docker volume rm srcs_wpdata
		# docker volume rm srcs_dbdata

restart: down up