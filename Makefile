NAME = walm/pgtap

all: build

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)

.PHONY: all build
