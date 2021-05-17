FROM ubuntu:20.04

WORKDIR /root

COPY build.sh .
COPY run.sh .

RUN sh ./build.sh

EXPOSE 80/tcp

CMD ["/bin/sh", "run.sh"]