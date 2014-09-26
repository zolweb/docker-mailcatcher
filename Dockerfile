FROM debian:wheezy

MAINTAINER ZOL <hello@zol.fr>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    ruby \
    ruby-dev \
    rubygems

RUN gem install mailcatcher

ENTRYPOINT ["mailcatcher", "--smtp-ip=0.0.0.0", "--http-ip=0.0.0.0", "--foreground"]
