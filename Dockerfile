FROM ubuntu:latest

# Install Node.js
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_8.x — Node.js 8 LTS "Carbon" |  bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

# Bundle app source
# Trouble with COPY http://stackoverflow.com/a/30405787/2926832

WORKDIR /usr/app
COPY . .
RUN npm install
EXPOSE  3000

#  Defines your runtime(define default command)
# These commands unlike RUN (they are carried out in the construction of the container) are run when the container
CMD ["node","server.js"]
RUN apt-get install nginx
COPY ./default.conf /etc/nginx/conf.d/
RUN systemctl restart nginx
