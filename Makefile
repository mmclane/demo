.DEFAULT_GOAL := build

run:
	@go fmt
	@go run .

build-container:
	docker build -t pkgs.doc.network/m3stuff/demo:latest .

build-app:
	@go fmt
	@go build -o bin/demo .

push:
	docker push pkgs.doc.network/m3stuff/demo:latest

k8s:
	kubectl apply -f ./k8s-configs/deployment.yaml

build: build-app build-container push k8s

cleanup:
	-kubectl delete -f ./k8s-configs/deployment.yaml
	-rm -rf bin/demo
