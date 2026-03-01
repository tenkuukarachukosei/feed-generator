FROM node:20

WORKDIR /app

COPY . .

RUN yarn build

ENV NODE_ENV production

# Use yarn to start the application
CMD ["node", "dist/server.js"]
