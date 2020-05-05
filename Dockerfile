FROM node:14.1-alpine as builder

RUN apk add yarn

COPY . .

RUN yarn install



FROM node:14.1-alpine

RUN apk add nodejs

COPY --from=builder . .

EXPOSE 3000

ENTRYPOINT ["node", "src/index.js"]