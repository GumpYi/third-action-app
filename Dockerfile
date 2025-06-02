FROM node:16

ENV MONGODB_CLUSTER_ADDRESS cluster0.tyrwgmu.mongodb.net
ENV MONGODB_USERNAME gumpyi
ENV MONGODB_PASSWORD gF6t2OTo92KNSX6i
ENV MONGODB_DB_NAME gha-demo

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]