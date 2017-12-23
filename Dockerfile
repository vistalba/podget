FROM ubuntu:xenial
RUN apt-get update && apt-get install -y podget perl curl
ENTRYPOINT ["/usr/bin/podget"]
RUN apt-get autoremove -y && apt-get autoclean -y
