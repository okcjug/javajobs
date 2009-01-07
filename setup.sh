#!/bin/bash

#grails update
#grails install-plugin yui
#grails install-plugin stark-security

ROLES="ROLE_SUPER_USER ROLE_RECRUITER"

for ROLE in $ROLES ; do 
	CONSTANTS="$CONSTANTS\n        static final $ROLE = '$ROLE'"
done

echo $CONSTANTS
