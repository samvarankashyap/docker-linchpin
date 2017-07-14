FROM fedora 
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN dnf install -y gcc \
                   git \
                   python-pip \
                   libselinux-python \
                   python-devel \
                   libffi-devel \
                   redhat-rpm-config \
                   openssl-devel \
                   libyaml-devel \
                   && dnf clean all
RUN pip install pyyaml
RUN git clone https://github.com/CentOS-PaaS-SIG/linchpin/
WORKDIR "/linchpin"
RUN pip install file://$PWD
