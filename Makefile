.PHONY: all build
all: build

build:
	docker build --rm --tag="figlet" .
