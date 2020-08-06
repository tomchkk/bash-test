VERSION?=$(shell git describe --always --first-parent HEAD)

all: env version

version: clean
	@echo $(VERSION) > ./version

clean:
	@rm -f ./version

env:
	@cp -n ${PWD}/.env.example ${PWD}/.env || :
