#!/bin/sh

PRIVATE_IP=$(wget -q -O - http://169.254.169.254/2014-11-05/meta-data/local-ipv4)

if [ -z ${PRIVATE_IP} ]; then
	exit 1
fi

# Run Registrator
/bin/registrator -ip=${PRIVATE_IP} $@
exit $?
