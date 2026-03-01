FROM node:20

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

ENV NODE_ENV production

# Use yarn to start the application
CMD ["yarn", "start"]
