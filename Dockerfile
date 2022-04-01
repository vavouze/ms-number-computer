FROM node:10

WORKDIR /usr/src/app/

COPY ./package.json /usr/src/app/package.json

RUN npm install

COPY ./ /usr/src/app/

ENTRYPOINT [ "npm", "run", "development" ]