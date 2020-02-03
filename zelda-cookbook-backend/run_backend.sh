#!bin/bash
until nc -z -v -w30 db 5432; do
    echo "Waiting for database connection..."
    sleep 5
done
knex migrate:latest 
knex seed:run
node server.js