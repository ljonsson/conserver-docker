repo = "ljonsson/conserver"
version = "0.2.4"

build:
	docker build --tag $(repo):$(version) .

push:
	docker push $(repo):$(version)
	docker tag $(repo):$(version) $(repo):latest
	docker push $(repo):latest

run:
	docker run \
		--volume ~/conserver/etc:/usr/local/etc \
		--volume ~/conserver/log:/usr/local/log \
		--rm \
		--name conserver \
		--hostname conserver \
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

compose:
	docker-compose up -d
