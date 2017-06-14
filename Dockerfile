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

WORKDIR /app

RUN git clone https://github.com/Camiloruiiz/webpack-gulp4.git app

#ADD ./app /app

WORKDIR /app/app

RUN npm install

#VOLUME /app

CMD ["npm", "run", "dev"]
