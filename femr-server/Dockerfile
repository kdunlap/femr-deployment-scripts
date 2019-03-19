FROM ubuntu:16.04

RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m femrapp && echo "femrapp:femrapp" | chpasswd && \
    echo "femrapp ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/femrapp && \
    chmod 0440 /etc/sudoers.d/femrapp
    
USER ubuntu
CMD /bin/bash