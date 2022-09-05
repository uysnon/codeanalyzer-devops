#! /bin/bash

mvn -f $codeanalyzer_metrics_path/pom.xml clean package
docker build $codeanalyzer_metrics_path -t uysnon/codeanalyzer-metrics:latest
