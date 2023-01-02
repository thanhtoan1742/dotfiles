build:
	sh copy_config.sh
	docker build . -t dotfile:0.1.0 -t dotfile:latest

run:
	docker rm -f dotfile
	docker run -p 8080:8000 --name dotfile dotfile

ssh:
	docker exec -it dotfile /bin/bash

