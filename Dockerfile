FROM node:16-alpine

RUN apt update && apt upgrade -y \
    && apt clean

RUN mkdir /app
WORKDIR /app

COPY . /app

EXPOSE 4000

RUN npm install
CMD npm start