FROM ubuntu:14.04
COPY liblsl*.deb /
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install git g++ make libsndfile1-dev jackd2 portaudio19-dev \
                       libjack-jackd2-dev liblo-dev \
                       zip libx11-dev x11proto-video-dev libxv-dev \
                       libcwiid-dev ruby libboost-dev libgtkmm-3.0-dev \
                       libfreenect-dev swig libboost-system-dev openssh-server \
                       software-properties-common
RUN add-apt-repository ppa:webupd8team/java && \
    apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-licence-v1-1 select true | /usr/bin/debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install oracle-java8-installer oracle-java8-set-default \
               octave-signal && \
    dpkg -i /liblsl*.deb && \
    rm /liblsl*.deb && \
    mkdir -p /etc/mha
