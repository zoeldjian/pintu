FROM node:16-alpine

RUN apk update && apk add ca-certificates && update-ca-certificates
RUN mkdir /app
WORKDIR /app

COPY . /app

EXPOSE 4000

RUN npm install
CMD npm start