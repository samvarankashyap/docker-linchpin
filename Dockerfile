FROM fedora 
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN dnf install -y gcc rpm-build make pkgconfig automake autoconf gcc-c++ 
RUN dnf install -y python-pip gcc git libffi-devel redhat-rpm-config python-devel\
    openssl-devel python-setuptools && dnf clean all
RUN git clone https://github.com/CentOS-PaaS-SIG/linchpin/
WORKDIR "/linchpin"
RUN pip install file://$PWD
