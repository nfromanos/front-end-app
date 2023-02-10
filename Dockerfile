FROM node:alpine

WORKDIR /front-end-app

ENV PATH /front-end-app/node_modules/.bin:$PATH

COPY package.json ./

RUN yarn install

COPY . ./

CMD ["yarn", "start"]