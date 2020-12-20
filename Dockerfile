# FROM node:7.5-slim
FROM alpine:latest

RUN apk add --no-cache nodejs npm

COPY server.js /server.js

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "node" ]

CMD ["server.js"]