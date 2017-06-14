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

RUN git clone https://github.com/Camiloruiiz/webpack-gulp4.git app
#ADD ./app /app
WORKDIR /app

RUN npm install gulp-cli -g \
    && npm install

VOLUME ["./:/apps"]

CMD ["npm", "run", "dev"]
