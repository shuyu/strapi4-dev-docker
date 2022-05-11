#!/bin/sh
set -ea 

if [ ! -f "package.json" ]; then
  echo "create strapi app with create-strapi-app" 
  echo '\n' | create-strapi-app . \
                --no-run \
                --use-npm \
                --dbclient $DATABASE_CLIENT \
                --dbhost $DATABASE_HOST \
                --dbport $DATABASE_PORT \
                --dbname $DATABASE_NAME \
                --dbusername $DATABASE_USERNAME \
                --dbpassword $DATABASE_PASSWORD
else
  echo "Node modules installing..."
  npm install
fi

echo "Starting..."

exec "$@"
