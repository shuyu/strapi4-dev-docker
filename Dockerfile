FROM node:16-alpine

RUN apk update && apk add  build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev

WORKDIR /srv/app

VOLUME /srv/app

RUN npm install -g create-strapi-app@latest

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["npm", "run", "develop"]