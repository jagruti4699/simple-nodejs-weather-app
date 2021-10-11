
FROM node:latest as build
WORKDIR /usr/app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node","server.js"]

FROM nginx
COPY ./default.conf /etc/nginx/conf.d/
COPY --from=build /usr/app/build /usr/share/nginx/html
