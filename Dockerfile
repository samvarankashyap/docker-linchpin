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
                   libyaml-dev \
                   libpython2.7-dev \
                   && dnf clean all 
RUN git clone https://github.com/CentOS-PaaS-SIG/linchpin/
WORKDIR "/linchpin"
RUN pip install file://$PWD
