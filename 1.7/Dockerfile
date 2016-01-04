FROM java:8-jre
MAINTAINER Jérémy SEBAN <jeremy@seban.eu>

ENV FORGE_VERSION 1.7.10-10.13.4.1558-1.7.10 

RUN apt-get -qq update
RUN apt-get -qq -y install wget

RUN mkdir /usr/share/minecraft_template
WORKDIR /usr/share/minecraft_template
RUN wget http://files.minecraftforge.net/maven/net/minecraftforge/forge/$FORGE_VERSION/forge-$FORGE_VERSION-installer.jar
RUN java -jar forge-$FORGE_VERSION-installer.jar --installServer
RUN rm forge-$FORGE_VERSION-installer.jar

RUN mkdir /minecraft
WORKDIR /minecraft
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 25565

ENTRYPOINT ["/entrypoint.sh"]

