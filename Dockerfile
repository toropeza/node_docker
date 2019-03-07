FROM ubuntu:14.04

# Install Node
RUN apt-get update
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_9.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

COPY . /app
WORKDIR /app

RUN npm install 
ENTRYPOINT ["npm","start"]
