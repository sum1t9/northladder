FROM node:latest

RUN useradd -r -u 2000 app


WORKDIR /usr/src/opt

COPY . .

USER app

EXPOSE 3000

ARG DEPLOYED_FROM
ENV DEPLOYED_FROM=${DEPLOYED_FROM}

CMD ["node", "app.js"]

