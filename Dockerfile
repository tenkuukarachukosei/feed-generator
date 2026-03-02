FROM node:20

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --production=false

COPY . .
RUN yarn build

ENV NODE_ENV=proteduction
CMD ["node", "dist/index.js"]
