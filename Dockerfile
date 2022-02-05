FROM ubuntu:20.04
RUN apt update
RUN apt install -y curl
RUN apt install -y git
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt install -y nodejs

COPY . /code
WORKDIR /code

RUN npm install --save-dev hardhat

ENTRYPOINT [ "/bin/bash" ]