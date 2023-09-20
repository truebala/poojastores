
FROM node:14-alpine


WORKDIR /app


COPY . .


RUN 

EXPOSE 3000


CMD ["node", "server.js"]
