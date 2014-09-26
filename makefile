build:
	sudo docker build -t zolweb/docker-mailcatcher .

run:
	sudo docker run --rm=true -t -i -p 1080:1080 zolweb/docker-mailcatcher

clear:
	sudo docker rmi -f zolweb/docker-mailcatcher
