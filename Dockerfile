FROM dhagberg/co811-javax:latest
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
COPY build/ /root/build/
RUN /root/build/build_libreoffice $BUILDTS

ENTRYPOINT ["/bin/bash"]
