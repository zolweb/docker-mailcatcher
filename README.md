Docker: Mailcatcher
===================

Simple image to run [Mailcatcher](http://mailcatcher.me/)

Usage
-----

```sh
# Run a daemon container with mailcatcher started
sudo docker run \
    -d \ # Daemon mode
    --name mailcatcher \ # Give a name to your container, so you can start/stop or link it later
    zolweb/docker-mailcatcher
```

Now you can access to the mailcatcher smtp throught the `1025` port and the web interface via `http://localhost:1080`
Feel free to map ports differently.

Development
-----------

```sh
# Build manually the image
make build # sudo docker build -t zolweb/docker-mailcatcher .

# Test the image by running a container that launch nginx
make run # sudo docker run --rm=true -t -i -p 1080:1080 zolweb/docker-mailcatcher
# Then check http://localhost:1080

# Remove the image
make clear # sudo docker rmi -f zolweb/docker-mailcatcher
```
