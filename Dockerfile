FROM node:6.2.1

RUN npm install -g http-server

WORKDIR /app
COPY todomvc/examples/angular2/package.json /app
RUN npm install

COPY todomvc/examples/angular2/. /app

EXPOSE 8080
CMD ["http-server"]
