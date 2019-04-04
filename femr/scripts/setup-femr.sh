#!/usr/bin/env bash

# TODO - should the app run as a different user?

if [ ! -d "~/Git" ]; then
  mkdir ~/Git
fi

if [ ! -d "~/App" ]; then
  mkdir ~/App
fi

cd ~/Git \
    && git clone https://github.com/FEMR/femr.git \
    && cd femr \
    && git checkout release-2.3 \
    && sbt clean compile dist \
    && mv ./target/universal/femr-2.3.8.zip ~/App \
    && cd ~/App \
    && unzip femr-2.3.8.zip \
    && mkdir ./femr-2.3.8/public \
    && mkdir ./femr-2.3.8/public/img \
    && mkdir ./femr-2.3.8/Upload \
    && mkdir ./femr-2.3.8/Upload/CSV \
    && cp ./femr-2.3.8/conf/application.conf ~/App/prod.conf \

## Add rc.local file stuff
# head -c 32 /dev/urandom | base64
