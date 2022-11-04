FROM node:16-alpine

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY . /app

EXPOSE 4000

RUN npm install
CMD npm start