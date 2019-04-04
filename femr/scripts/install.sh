#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND="noninteractive"

# Install Server Dependencies
./setup-server.sh

# Install fEMR
./setup-femr.sh