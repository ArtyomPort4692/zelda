FROM node
WORKDIR /backend
COPY ./package.json ./package.json 
RUN apt-get update 
RUN apt-get install -y netcat
RUN npm install knex -g
RUN npm install
COPY . .
ENTRYPOINT [ "bash", "run_backend.sh" ]
