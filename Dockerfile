FROM node:14-alpine AS BUILD_IMAGE

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

EXPOSE 3000

CMD [ "yarn", "dev" ]