#!/bin/sh

echo "[edc]: add JAVA_HOME env var"
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")

echo "[edc]: add nifi service"
/nifi/nifi-1.11.4/bin/nifi.sh install

echo "[edc]: run nifi service"
/nifi/nifi-1.11.4/bin/nifi.sh run
