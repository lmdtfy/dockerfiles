FROM lanciv/baseimage:0.1.0

# Packaged dependencies
RUN     apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
        bzr \
        --no-install-recommends

# Install go
RUN     curl -sSL https://golang.org/dl/go1.3.src.tar.gz | tar -C /usr/local -xz
ENV     PATH    /usr/local/go/bin:$PATH
ENV     GOPATH  /go
RUN     cd /usr/local/go/src && ./make.bash --no-clean 2>&1
