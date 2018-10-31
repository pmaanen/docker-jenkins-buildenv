FROM ubuntu:14.04
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install git:i386 g++:i386 make:i386 libsndfile1-dev:i386 \
                       jackd2:i386 portaudio19-dev:i386 \
                       libjack-jackd2-dev:i386 octave-signal:i386 \
		       liblo-dev:i386 default-jdk:i386 zip:i386 \
		       libx11-dev:i386 x11proto-video-dev:i386 libxv-dev:i386 \
                       libcwiid-dev:i386 ruby:i386 libboost-dev:i386 \
		       libgtkmm-3.0-dev:i386 libfreenect-dev:i386 swig:i386 \
		       libboost-system-dev:i386 openssh-server:i386 \
		       && \
    mkdir -p /etc/mha && \
    apt-get -y purge autoconf automake autotools-dev libtool
