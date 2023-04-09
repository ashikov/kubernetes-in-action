build:
	docker build -t kubia .

start:
	docker run -d --name kubia-container -p 8080:8080 kubia

bash:
	docker exec -it kubia-container bash

stop:
	docker stop kubia-container

push:
	docker push lastnorf/kubia
