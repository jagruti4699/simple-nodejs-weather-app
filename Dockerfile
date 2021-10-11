FROM node:latest
WORKDIR /usr/app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node","server.js"]
RUN sudo apt install nginx
RUN systemctl restart nginx
COPY ./default.conf /etc/nginx/conf.d/
RUN systemctl restart nginx
EXPOSE 80
