FROM ubuntu:18.04
COPY *.sh /usr/bin/
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install default-jre-headless git aptly gpg1 lftp && \
    chmod a+x /usr/bin/aptly_*.sh && \
    cp -v /usr/bin/gpg1 /usr/bin/gpg
WORKDIR /root
