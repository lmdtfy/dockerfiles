FROM ubuntu:14.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
            ca-certificates \
            build-essential \
            git \
            mercurial \
            curl \
            wget \
            --no-install-recommends

#RUN mkdir /root/.ssh/
#RUN touch /root/.ssh/known_hosts
#RUN ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts
#RUN ssh-keyscan github.com >> /root/.ssh/known_hosts
