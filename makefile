build:
	docker build -t zolweb/docker-mailcatcher .

run:
	docker run --rm=true -t -i -p 1080:1080 zolweb/docker-mailcatcher

clear:
	docker rmi -f zolweb/docker-mailcatcher
