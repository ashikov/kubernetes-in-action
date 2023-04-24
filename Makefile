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

# Below are the commands that can be executed locally with minikube

run-pod:
	kubectl run kubia --image=lastnorf/kubia --port=8080

pods:
	kubectl get pods

service:
	kubectl expose pod kubia --type=LoadBalancer --name kubia-http

all:
	kubectl get all

# Get the service address and port and open the browser
kubia:
	minikube service kubia-http
