FROM node:13-alpine
RUN mkdir -p /home/app
COPY ./* /home/app/
WORKDIR /home/app

RUN npm install

RUN npm init

RUN npm install express
CMD ["node", "server.js"]

EXPOSE 6000
