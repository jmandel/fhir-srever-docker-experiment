#!/bin/bash

cp patches/application.yml ./reference-api-webapp/src/main/resources/application.yml
cp patches/auth.properties ./reference-auth-server-webapp/src/main/resources/config/auth.properties
mvn clean install -e -f reference-impl/pom.xml
