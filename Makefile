hostname := $(shell hostname)
cookie := $(shell xauth list | awk '/^${hostname}\//{print $$3}')

all:
	@ echo Generating Dockerfile
	[ ! -f Dockerfile ] || rm Dockerfile
	m4 Dockerfile.m4 > Dockerfile
	@ echo Generating run.sh
	[ ! -f run.sh ] || rm run.sh
	m4 run.m4 > run.sh
	chmod +x run.sh
	@ echo Building docker container
	docker build -t x11-test --build-arg cookie=${cookie} .

clean:
	@ rm -f Dockerfile run.sh
