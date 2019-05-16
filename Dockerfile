FROM node:10-alpine

RUN apk add --no-cache \
        python \
        git \
        make \
        gcc \
        g++ \
        sudo \
        ruby \
        ruby-dev \
        openssl-dev \
        linux-headers \
        py-pip 
        
RUN pip install --upgrade pip && pip install s3cmd

RUN npm install -g jsonlint-cli

RUN gem install compass --no-document
