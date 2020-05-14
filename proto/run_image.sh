#!/bin/bash

docker run \
  -p 8080:80 \
  -p 54323:5432 \
  --name openproject \
  -e SECRET_KEY_BASE=secret \
	-v $(pwd)/.res/pgdata:/var/openproject/pgdata \
	-v $(pwd)/.res/static:/var/openproject/assets \
	openproject/community:10.5.0

docker rm -f /openproject # Docker sagt, der container sei noch vorhanden, obwohl "docker container ls" nichts zurückgibt...?

# User: admin PW: adminadmin

# Nach restore von zip: Dateiowner von root zurück auf postgres setzen
# sudo chown -R 102 pgdata/

