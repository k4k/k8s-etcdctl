FROM alpine:latest

ENV VERSION=3.2.15

ADD etcdctl-wrapper /bin/etcdctl-wrapper

RUN apk update && apk add curl
RUN curl -jksSL https://github.com/coreos/etcd/releases/download/v${VERSION}/etcd-v${VERSION}-linux-amd64.tar.gz | gunzip -c - | tar -xf - -C /tmp && mv /tmp/etcd-v${VERSION}-linux-amd64/etcdctl /bin/etcdctl && chmod +x /bin/etcdctl && rm -rf /tmp/* && chmod 755 /bin/etcdctl-wrapper
