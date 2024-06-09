all: run
	docker-compose -f ./srcs/docker-compose.yml up --build

run :
	bash ./srcs/requirements/tools/init.sh
fclean : clean
	sudo rm -rf /home/emohamed/data
	sudo rm -rf ./srcs/requirements/ngnix/tools
	sudo rm -rf /home/emohamed/certificate
	docker system prune -af 
clean:
	docker-compose -f ./srcs/docker-compose.yml down
	sudo rm ./srcs/requirements/nginx/tools/*
re : fclean all

.PHONY: all run fclean clean re