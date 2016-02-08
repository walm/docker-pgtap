NAME = walm/pgtap:0.95.0

all: build

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)

.PHONY: all build
