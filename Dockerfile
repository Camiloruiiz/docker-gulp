FROM node:8.1.0-alpine

RUN apk update \
    && apk add \
    git

RUN set -x \
    && apk del \
        curl \
        gnupg \
        linux-headers \
        paxctl \
        python \
        tar

RUN npm install gulp-cli -g
ADD startup.sh /
RUN chmod +x /startup.sh

WORKDIR /opt

CMD ["/bin/sh", "/startup.sh"]
