FROM ubuntu:18.04
COPY *.sh /usr/bin/
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install default-jre-headless aptly lftp && \
    chmod a+x /usr/bin/aptly_*.sh
WORKDIR /root
