#!/bin/sh

set -exu

# Add your additional provisioning here for custom VM images.

GOLANG_VERSION=1.23.4

pkg install -y gcc13
ln -s /usr/local/bin/gcc13 /usr/local/bin/gcc
fetch -o - https://go.dev/dl/go${GOLANG_VERSION}.freebsd-amd64.tar.gz | tar xz -f - -C /usr/local/
ln -s /usr/local/go/bin/go /usr/local/bin/go
