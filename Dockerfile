FROM node:16

WORKDIR /srv/app

VOLUME /srv/app

RUN npm install -g create-strapi-app@latest

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["npm", "run", "develop"]