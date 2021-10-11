
FROM node:latest as build
WORKDIR /usr/app
COPY . .
RUN npm install
CMD ["node","server.js"]

FROM nginx
EXPOSE 3000
COPY ./default.conf /etc/nginx/conf.d/
COPY --from=build /usr/app/build /usr/share/nginx/html
