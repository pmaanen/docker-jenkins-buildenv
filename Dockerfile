FROM ubuntu:18.04
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install default-jre-headless git aptly gnupg1 lftp make && \
    chmod a+x /usr/bin/aptly_*.sh && \
    cp -v /usr/bin/gpg1 /usr/bin/gpg
WORKDIR /root
