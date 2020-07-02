.PHONY: test

host = "http://localhost:5000"

help:
	@echo
	@echo "🚢 DOCKER"
	@echo
	@echo "up:          build images, start containers"
	@echo "clean:       stop containers, rm all containers/images/volumes"
	@echo "list:        list all containers/images/volumes"
	@echo
	@echo "📡 API"
	@echo
	@echo "hc:          healthcheck"
	@echo "get:         get all things"
	@echo "post:        create one thing"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "export:      export Poetry dependencies to requirements.txt"
	@echo "env:         show environment info"
	@echo "deps:        list prod dependencies"
	@echo

#
# 🚢 DOCKER
#

up:
	docker-compose up --build

clean:
	docker ps -qa | xargs docker stop; docker system prune --volumes -f; docker image prune -af

list:
	docker ps -a; docker images; docker volume ls

#
# 📡 API
#

hc:
	http $(host)/healthcheck

get:
	http $(host)/get-things

post:
	http POST $(host)/post-thing name=my_new_thing

#
# 📦 DEPENDENCIES
#

export:
	poetry export -f requirements.txt > requirements.txt

env:
	poetry env info

deps:
	poetry show --tree --no-dev
