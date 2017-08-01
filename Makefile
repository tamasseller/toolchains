all: docker-image-tag

docker-image-tag: Dockerfile
	docker build -t tools . && touch docker-image-tag
	
enter-the-matrix: docker-image-tag
	cd .. && docker run --privileged -it -v $$PWD:$$PWD -w $$PWD -v /dev/bus/usb/:/dev/bus/usb -e LOCAL_USER_ID=`id -u $$USER` tools bash
	
clean:
	@rm docker-image-tag 