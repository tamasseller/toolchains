all: docker-image-tag

.PHONY: get-docker

get-docker:
	docker -v || wget https://get.docker.com -o /dev/null -O - | bash

docker-image-tag: get-docker Dockerfile
	docker build -t tools . && touch docker-image-tag

ifndef CD_TO
CD_TO = ..
endif

enter-the-matrix: get-docker docker-image-tag
	cd $(CD_TO) && \
	docker run \
		--privileged \
		-w $$PWD \
		-v $$PWD:$$PWD \
		-v /dev/bus/usb/:/dev/bus/usb \
		-v /etc/group:/etc/group:ro \
		-v /etc/passwd:/etc/passwd:ro \
		-e LOCAL_USER_ID=`id -u $$USER` \
		-e LOCAL_USER_NAME=$$USER \
		-it tools bash

clean:
	@rm docker-image-tag 
