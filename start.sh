#!/bin/bash -e

if [ -f /etc/grid-security/certificates.orig /etc/grid-security/certificates.orig ];
then
	cp -a /etc/grid-security/certificates.orig/* /etc/grid-security/certificates/
fi
fetch-crl
/usr/sbin/crond -n
