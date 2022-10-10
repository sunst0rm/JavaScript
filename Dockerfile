FROM node:12.9.1-alpine

ENV APP_DIR /app

RUN apk add --update openssh git python make g++

RUN mkdir $APP_DIR

COPY . $APP_DIR

CMD ["node", "./sandbox.js"]
