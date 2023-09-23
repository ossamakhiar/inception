all: up

up: volume
	@docker compose -f ./srcs/docker-compose.yml up --build -d

down:
	@docker compose -f ./srcs/docker-compose.yml down

fclean: down
	@docker rmi -f $$(docker images -q)
	@docker volume rm $$(docker volume ls -q)
	@docker system prune -a

volume:
	@mkdir -p /home/okhiar/data/mariadb
	@mkdir -p /home/okhiar/data/wordpress

re: fclean up
