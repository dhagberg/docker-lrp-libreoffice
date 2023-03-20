FROM cga-ci:5000/lrp-javax:latest
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
COPY build/ /root/build/
RUN /root/build/build_libreoffice $BUILDTS

CMD ["/usr/bin/bash"]
