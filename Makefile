all: build push

build:
	docker build -t yurkinpark/phpliteadmin:latest ./

push:
	docker push yurkinpark/phpliteadmin:latest