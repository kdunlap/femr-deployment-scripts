#!/usr/bin/env bash

# If directory does no exist - is ~ correct here?
mkdir ~/Git \
    && cd ~/Git \
    && git clone https://github.com/FEMR/femr.git \
    && cd femr \
    && git checkout release-2.3 \
    && sbt clean compile dist