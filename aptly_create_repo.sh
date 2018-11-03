for distribution in bionic xenial trusty
do
    aptly repo create -comment="openMHA packages for Debian and Ubuntu $distribution" \
    -component=universe -distribution=$distribution -architectures=amd64,i386 openMHA
done
