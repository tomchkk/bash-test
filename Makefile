all: env

env:
	@cp -n ${PWD}/.env.example ${PWD}/.env || :
