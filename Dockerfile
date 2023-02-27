FROM node:18-alpine

RUN apk add --no-cache bash

RUN mkdir /app && cd /app

COPY . /app/

RUN cd /app && npm install --production

WORKDIR /app

EXPOSE 8080
CMD [ "node", "server.js" ]