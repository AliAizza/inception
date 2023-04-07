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
		# docker stop $(docker ps -qa) ; docker rm -f $(docker ps -aq) ; docker rmi -f $(docker images -aq) ; docker volume rm  -f $(docker volume ls -q) ; docker network rm $(docker network ls -q) 2>/dev/null
		sudo docker system prune -af

restart: down up