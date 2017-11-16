FROM ubuntu:xenial
RUN apt-get update && apt-get install -y podget util-linux
ENTRYPOINT ["/usr/bin/podget"]
RUN apt-get autoremove -y && apt-get autoclean -y
