all: build

build:
	docker build -f ./docker/router/router.dockerfile -t bgp-router .
	docker build -f ./docker/host/host.dockerfile -t bgp-host .

clean:
	docker rmi badass-router badass-host

re: clean build

.PHONY: all build clean re


