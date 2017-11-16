FROM ubuntu:xenial
RUN apt-get update && apt-get install -y podget rename
ENTRYPOINT ["/usr/bin/podget"]
RUN apt-get autoremove -y && apt-get autoclean -y
