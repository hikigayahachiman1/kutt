FROM node:22-alpine

ENV NODE_ENV=production

WORKDIR /kutt

COPY package*.json ./

RUN npm install --omit=dev

COPY . .

RUN mkdir -p /var/lib/kutt

EXPOSE 3000

CMD npm run migrate && npm start
