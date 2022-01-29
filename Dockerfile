FROM pektin/deno-nodejs-alpine
RUN apk add --update --no-cache py3-pip ansible bash openssh-keygen openssh-client
RUN pip3 install hcloud
WORKDIR /ansible
