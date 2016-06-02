#!/bin/bash

for repo in reference-auth-security \
            reference-auth-server-webapp \
            reference-auth-server-ldap-webapp \
            reference-api-mysql \
            reference-api-oauth2 \
            reference-api-fhir \
            reference-api-smart-support \
            reference-api-webapp \
            reference-messaging \
            reference-apps \
            reference-impl \
            bilirubin-app \
            java-client \
            tools \
            examples; do
    git clone -b smart-dstu2 --depth 1 https://github.com/nschwertner/$repo
done

mvn install -f reference-impl/pom.xml
