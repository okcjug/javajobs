#!/bin/bash

grails update
if [ ! -e web-app/js/yui ] ; then
	grails install-plugin yui
fi

if [ ! -e grails-app/conf/StarkSecurityConfig.groovy ] ; then
	grails install-plugin stark-security
	grails stark-security-install-full
fi

ROLES="ROLE_SUPER_USER ROLE_RECRUITER"
LIST="ANONYMOUS"

for ROLE in $ROLES ; do 
	CONSTANTS="$CONSTANTS static final $ROLE = '$ROLE';"
	LIST="$LIST , $ROLE"
done

#echo "s/\/\/ static final ADMIN_USER = 'ROLE_ADMIN_USER'/$CONSTANTS" grails-app/domain/Role.groovy
sed -e "s/\/\/ static final ADMIN_USER = 'ROLE_ADMIN_USER'/$CONSTANTS/" grails-app/domain/Role.groovy > Role.groovy
sed -e "s/\[  ANONYMOUS \]/[ $LIST ]/" Role.groovy > grails-app/domain/Role.groovy
