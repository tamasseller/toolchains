FROM debian:buster

RUN 	apt-get update && \
	apt-get install -y \
		gcc-arm-none-eabi \
		gdb-arm-none-eabi \
		g++-mingw-w64-x86-64 \
		gdb-mingw-w64 \
		g++-6 \
		gdb \
		make \
		git \
		lcov \
		pandoc \
		texlive \
		openocd \
		dfu-util \
		usbutils \
		nano \
		valgrind \
		bc \
		libarchive-dev \
		bash-completion \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY gosu /usr/local/bin/gosu
COPY colorize.sh /

#EXPOSE 3333

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
