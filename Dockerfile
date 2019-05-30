FROM ubuntu:xenial

RUN locale-gen de_CH.UTF-8  
ENV LANG de_CH.UTF-8  
ENV LANGUAGE de_CH:de  
ENV LC_ALL de_CH.UTF-8

RUN apt-get update && apt-get install -y podget perl coreutils vim curl openssh-client
ENTRYPOINT ["/usr/bin/podget"]
RUN apt-get autoremove -y && apt-get autoclean -y && rm -rf /var/cache/apt/* /var/cache/debconf/* /var/lib/apt/* /var/lib/dpkg/* /tmp/* /var/tmp/* /var/log/*
