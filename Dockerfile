FROM ubuntu:xenial
RUN apt-get update && apt-get install -y podget && \
    mkdir /root/LOG && \
    ln -sf /dev/stdout /root/LOG/done && \
    ln -sf /dev/stderr /root/LOG/errors 
ENTRYPOINT ["/usr/bin/podget"]
