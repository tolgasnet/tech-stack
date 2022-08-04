FROM node:16

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
# RUN npm ci

COPY ./src ./src
EXPOSE 3000

CMD [ "node", "src/server.js" ]