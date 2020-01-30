FROM jetbrains/teamcity-agent:latest

MAINTAINER Oddbjørn Lona <oddbjorn_lona@hotmail.com>

RUN  mkdir -p /usr/lib/jvm/ && \
     mkdir -p /opt/build/tmp && \
     curl -o  /opt/build/tmp/openjdk-11.0.2_linux-x64_bin.tar.gz https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz && \
     tar zxvf /opt/build/tmp/openjdk-11.0.2_linux-x64_bin.tar.gz -C /usr/lib/jvm/ && \    
     rm -r /opt/build/tmp

