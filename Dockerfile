FROM node:alpine

WORKDIR /frontend

ENV PATH /frontend/node_modules/.bin:$PATH

COPY package.json ./

RUN yarn install

COPY . ./

CMD ["yarn", "start"]