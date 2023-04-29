
D:=$(shell date +"%Y-%m-%d")

build:
	DOCKER_BUILDKIT=1 docker build --rm -f "Dockerfile" -t lrzip "."

run:
	docker run -it lrzip /bin/bash

try:
	docker run -v ./test/models:/test/data -v ./test/zip.sh:/test/zip.sh -it lrzip bash /test/zip.sh


push:
	docker tag lrzip:latest pasaopasen/lrzip:$D 
	docker push pasaopasen/lrzip:$D 


