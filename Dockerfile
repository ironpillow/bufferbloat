FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install netperf && \
    apt-get install -y iputils-ping
COPY betterspeedtest.sh /usr/local/bin/betterspeedtest
RUN chmod +x /usr/local/bin/betterspeedtest
CMD ["/usr/local/bin/betterspeedtest"]
