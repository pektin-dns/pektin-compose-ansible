FROM alpine:3.16.0
RUN apk add --update --no-cache py3-pip ansible bash openssh-keygen openssh-client rsync
RUN pip3 install hcloud
WORKDIR /ansible
