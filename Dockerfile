#
# Build
#

FROM ubuntu as build

RUN apt-get update && \
	apt-get install -y cmake build-essential libxml2-dev libpcre3-dev libpng-dev zlib1g-dev git && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /source

ENV GLTF_VERSION 2.0

# Compile glTF
RUN git clone --branch $GLTF_VERSION --depth 1 --recursive https://github.com/KhronosGroup/COLLADA2GLTF.git /source && \
	cmake . && \
	make

#
# Run
#

FROM ubuntu

MAINTAINER opensource@wec360.se

COPY --from=build /source/COLLADA2GLTF-bin /usr/local/bin/collada2gltf

ENTRYPOINT ["collada2gltf"]

CMD ["-h"]
