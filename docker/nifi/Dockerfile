FROM debian:9

RUN apt-get update && \
    apt-get -y install curl \ 
        nano \
        openjdk-8-jdk

RUN mkdir /nifi
RUN mkdir /data_repository

RUN curl https://downloads.apache.org/nifi/1.11.4/nifi-1.11.4-bin.tar.gz --output /nifi/pkg.tar.gz
RUN tar xvzf /nifi/pkg.tar.gz -C /nifi

ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre/"

COPY ./bash_profile /root/.bash_profile 
COPY ./script.sh /start/script.sh
RUN chmod +x /start/script.sh

EXPOSE 8080

CMD ["/start/script.sh"]
