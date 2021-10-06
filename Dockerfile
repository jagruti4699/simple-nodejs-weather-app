FROM node:latest
WORKDIR /usr/app
COPY . .
COPY package*.json /usr/src/app/
RUN npm install
RUN npm install ejs -g
EXPOSE 3000
CMD ["node","server.js"]
