FROM node:20

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --production=false

COPY . .

CMD ["yarn", "start"]
