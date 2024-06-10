all: banner run
	docker-compose -f ./srcs/docker-compose.yml up -d  --build

banner :
		@echo "\033[1;33m"
		@echo "██╗ ███╗   ██╗ ██████╗███████╗██████╗ ████████╗██╗  ██████╗ ███╗   ██╗"
		@echo "██║ ████╗  ██║██╔════╝██╔════╝██╔══██╗╚══██╔══╝██║ ██╔═══██╗████╗  ██║"
		@echo "██║ ██╔██╗ ██║██║     █████╗  ██████╔╝   ██║   ██║ ██║   ██║██╔██╗ ██║"
		@echo "██║ ██║╚██╗██║██║     ██╔══╝  ██╔═══╝    ██║   ██║ ██║   ██║██║╚██╗██║"
		@echo "██║ ██║ ╚████║╚██████╗███████╗██║        ██║   ██║ ╚██████╔╝██║ ╚████║"
		@echo "╚═╝ ╚═╝  ╚═══╝ ╚═════╝╚══════╝╚═╝        ╚═╝   ╚═╝  ╚═════╝ ╚═╝  ╚═══╝"
		@echo "							  By: emohamed"
		@echo "\033[0m"

run :
	bash ./srcs/requirements/tools/init.sh
fclean : clean
	sudo rm -rf /home/emohamed/data
	sudo rm -rf ./srcs/requirements/ngnix/tools
	sudo rm -rf /home/emohamed/certificate
	docker system prune -af 
down:
	docker-compose -f ./srcs/docker-compose.yml down
	sudo rm ./srcs/requirements/nginx/tools/*

re : fclean all

.PHONY: all run fclean clean re