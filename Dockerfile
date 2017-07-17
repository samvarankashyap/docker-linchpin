FROM fedora 
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN dnf install -y rpm-build pkgconfig make automake python-pip gcc git libffi-devel redhat-rpm-config python-devel\
    openssl-devel python-setuptools && dnf clean all
RUN git clone https://github.com/CentOS-PaaS-SIG/linchpin/
WORKDIR "/linchpin"
RUN pip install file://$PWD
