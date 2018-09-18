#!/bin/bash

docker ps --filter "label=com.rsys.service" --format '{{.Label "com.rsys.service"}} {{.Label "com.rsys.service.type"}}' \
  | sort \
  | uniq -c \
  | while read count service type;do
     echo "rsys_servicecount,name=$service,type=$type count=$count"
    done
