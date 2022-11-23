FROM ubuntu
COPY init.sh /
RUN chmod +x /init.sh
RUN  apt-get update \
  && apt-get install -y openssh-server \
  && apt-get install -y git
RUN service ssh start
EXPOSE 22
ENTRYPOINT /init.sh
