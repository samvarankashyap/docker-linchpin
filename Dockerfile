FROM fedora 
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN dnf install -y gcc rpm-build make pkgconfig gettext automake strace64 gdb bison libtool autoconf gcc-c++ binutils 
RUN dnf install -y python-pip gcc git libffi-devel redhat-rpm-config python-devel\
    openssl-devel python-setuptools && dnf clean all
RUN git clone https://github.com/CentOS-PaaS-SIG/linchpin/
WORKDIR "/linchpin"
RUN pip install file://$PWD
