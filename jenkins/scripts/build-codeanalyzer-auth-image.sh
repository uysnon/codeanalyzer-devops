#! /bin/bash

mvn -f $codeanalyzer_auth_path/pom.xml clean package
docker build $codeanalyzer_auth_path -t uysnon/codeanalyzer-auth:latest
