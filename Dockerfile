FROM docker.io/mdernst/randoop-ubuntu-jdkany-coverage:latest

ENV HOME /root
ENV JAVA_HOME=${JAVA_HOME:-$(dirname $(dirname $(readlink -f $(which javac))))}
#ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

#ADD install-software-dependencies.sh /
ADD dockerscripts/*.sh /
RUN chmod +x /*.sh
#RUN /install-software-dependencies.sh

#RUN /setup-toradocu.sh
#RUN /setup-pascali.sh
#RUN /setup-defects4j.sh
