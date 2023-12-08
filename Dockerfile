FROM node:latest

WORKDIR /usr/src/opt

COPY . .

USER app

EXPOSE 4000

ARG DEPLOYED_FROM
ENV DEPLOYED_FROM=${DEPLOYED_FROM}

CMD ["node", "app.js"]

