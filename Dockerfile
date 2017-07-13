FROM fedora 
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN dnf groupinstall -y "Development Tools" && \
                     dnf install -y git \
                                    python-pip \
                                    libselinux-python \
                                    python-devel \
                                    libffi-devel \
                                    redhat-rpm-config \
                                    openssl-devel \
                                    && dnf clean all
RUN git clone https://github.com/CentOS-PaaS-SIG/linchpin/
WORKDIR "/linchpin"
RUN pip install file://$PWD
