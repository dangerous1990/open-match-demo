

docker-build:
	eval $(minikube docker-env)
	docker build -f director/Dockerfile -t open-match-dangerous1990-demo-director director/
	docker build -f matchfunction/Dockerfile -t open-match-dangerous1990-demo-matchfunction matchfunction/