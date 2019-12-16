ARG BASE_IMAGE=docker.io/istio/base
ARG BASE_VERSION=latest

FROM ${BASE_IMAGE}:${BASE_VERSION}

COPY client /usr/local/bin/client
COPY server /usr/local/bin/server
COPY certs/cert.crt /cert.crt
COPY certs/cert.key /cert.key

ENTRYPOINT ["/usr/local/bin/server"]
