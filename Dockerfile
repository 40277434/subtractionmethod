FROM node:10
WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .

RUN npm test

EXPOSE 80

CMD [ "node", "server.js" ]
