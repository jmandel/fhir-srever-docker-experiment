#!/bin/bash

echo "This works"

cp patches/application.yml ./reference-api-webapp/src/main/resources/application.yml
cp patches/auth.properties ./reference-auth-server-webapp/src/main/resources/config/auth.properties
cp patches/ldap.properties ./reference-auth-server-ldap-webapp/src/main/resources/config/ldap.properties
cp patches/mysql_clients.sql ./reference-auth-server-webapp/src/main/resources/db/openidconnect/mysql/mysql_clients.sql
mvn clean install -e -f reference-impl/pom.xml
