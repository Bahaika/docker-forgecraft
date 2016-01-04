#!/bin/bash

FORGE_JAR="/minecraft/forge-$FORGE_VERSION-universal.jar" 

if [ ! -f $FORGE_JAR ]; then
  echo "Installing minecraft files..."
  cp -R /usr/share/minecraft_template/* /minecraft/
fi

if [ -z $1 ]; then
  exec java -server -XX:+CMSIncrementalMode -XX:-UseAdaptiveSizePolicy -Xmn128M -XX:+UseConcMarkSweepGC -Xmx2048M -jar $FORGE_JAR nogui
elif [ "${1:0:1}" = '-' ]; then
  exec java -server $@ -jar $FORGE_JAR nogui
else
  exec $@
fi

