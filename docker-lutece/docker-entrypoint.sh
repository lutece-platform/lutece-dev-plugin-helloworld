#!/bin/bash
echo "Waiting for mysql"
until ant &> /dev/null
do
  printf "."
  sleep 1
done

echo -e "\nmysql ready"

/usr/local/tomcat/bin/catalina.sh run
