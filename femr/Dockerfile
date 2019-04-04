FROM ubuntu:16.04

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update \
      && apt-get install -y --no-install-recommends apt-utils \
      && apt-get -y install sudo

COPY ./scripts /home/femrapp/scripts

RUN useradd femrapp && echo "femrapp:femrapp" | chpasswd && \
    echo "femrapp ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/femrapp && \
    chmod 0440 /etc/sudoers.d/femrapp \
    && chown -R femrapp:femrapp /home/femrapp \
    && cd /home/femrapp/scripts \
    && su femrapp -c "/bin/bash ./install.sh"
    
USER femrapp