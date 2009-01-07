#!/bin/bash

yes | grails upgrade

if [ ! -e web-app/js/yui ] ; then
	grails install-plugin yui
fi

if [ ! -e grails-app/conf/StarkSecurityConfig.groovy ] ; then
	grails install-plugin stark-security
fi
grails stark-security-install-full

ROLES="ROLE_SUPER_USER ROLE_RECRUITER"
LIST="ANONYMOUS"

for ROLE in $ROLES ; do 
	CONSTANTS="$CONSTANTS static final $ROLE = '$ROLE';"
	LIST="$LIST , $ROLE"
done

sed -i bak -e "s/\/\/ static final ADMIN_USER = 'ROLE_ADMIN_USER'/$CONSTANTS/" grails-app/domain/Role.groovy 
sed -i bak -e "s/\[  ANONYMOUS \]/[ $LIST ]/" grails-app/domain/Role.groovy
rm grails-app/domain/*.groovybak
