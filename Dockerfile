FROM ubuntu

MAINTAINER opensource@wec360.se

RUN apt-get update && \
	apt-get install -y cmake build-essential libxml2-dev libpcre3-dev libpng-dev zlib1g-dev git && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /app

# ENV GLTF_VERSION v1.0-draft2
ENV GLTF_VERSION master

# Install glTF
RUN git clone --depth 1 --recursive https://github.com/KhronosGroup/COLLADA2GLTF.git && \
	cd COLLADA2GLTF && \
	git checkout ${GLTF_VERSION} && \
	cmake . && \
	make install && \
	cp ./bin/collada2gltf /usr/local/bin/ && \
	rm -rf ./glTF/

ENTRYPOINT ["collada2gltf"]

CMD ["-h"]
