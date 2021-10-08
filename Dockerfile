FROM node:latest
WORKDIR /usr/app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node","server.js"]
COPY ./default.conf /etc/nginx/conf.d/
EXPOSE 80
