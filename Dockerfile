FROM node:latest
WORKDIR /usr/app
COPY . .
RUN npm install
RUN npm install ejs -g
EXPOSE 3000
CMD ["node","server.js"]
