#! /bin/bash

mvn -f $codeanalyzer_metrics_path/mvnw clean package
docker build $codeanalyzer_metrics_path -t uysnon/codeanalyzer-metrics:latest
