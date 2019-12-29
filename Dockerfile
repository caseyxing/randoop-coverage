FROM ubuntu:18.04

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

ADD install-software-dependencies.sh /
ADD dockerscripts/*.sh /
RUN chmod +x /*.sh
RUN /install-software-dependencies.sh

#RUN /setup-toradocu.sh
#RUN /setup-pascali.sh
#RUN /setup-defects4j.sh
