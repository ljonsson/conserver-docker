repo = "ljonsson/conserver"
name = "conserver"
version = "0.2.1"

build:
	docker build --tag $(repo):$(version) .

push:
	docker push $(repo):$(version)

run:
	docker run \
		--volume ~/conserver/etc:/usr/local/etc \
		--volume ~/conserver/log:/usr/local/log \
		--rm \
		--name $(name) \
		--hostname $(name) \
		--interactive \
		--tty \
		$(repo):$(version) \
		/bin/bash

exec:
	docker exec \
		--interactive \
		--tty \
		$(name) \
		/bin/bash
