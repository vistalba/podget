FROM ubuntu:xenial
RUN apt-get update && apt-get install -y podget renameutils
ENTRYPOINT ["/usr/bin/podget"]
