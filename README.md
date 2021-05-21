# Official Accelleran Helm Chart Repo

## List of Helm Charts

|NAME   |CHART VERSION   |APP VERSION   |DESCRIPTION   |
|---|---|---|---|
|acc-helm/acc-dashboard        |0.19.0   |0.19.0          |The All-In-One Accelleran Dashboard   |
|acc-service-monitor           |0.1.0    |0.1.0           |The Accelleran dRAX Service Monitor   |      
|acc-helm/acc-sys-dashboard    |1.5.7    |1.5.7           |Accelleran's System Overview Dashboard   |   
|acc-helm/configurator         |0.1.0    |0.1.0           |The configurator for the Accelleran dRAX |    
|acc-helm/dash-front-back-end  |0.15.0   |0.15.0          |Frontend and backend of the Accelleran Dashboard   |
|acc-helm/drax                 |0.7.2    |0.7.2           |All in one Accelleran dRAX   |
|acc-helm/druid                |0.4.1    |0.3.0           |Druid chart   |
|acc-helm/kafka                |0.20.8   |5.0.1           |Apache Kafka is publish-subscribe messaging ret...   |
|acc-helm/kong                 |1.2.0    |1.4             |The Cloud-Native Ingress and API-management   |
|acc-helm/kube-eagle           |1.1.5    |1.1.0           |Prometheus exporter for Kubernetes pod & node r...   |
|acc-helm/loki-stack           |0.35.1   |v1.4.1       	  |Loki: like Prometheus, but for logs.
|acc-helm/metrics-server       |2.9.0    |0.3.6           |Metrics Server is a cluster-wide aggregator of ...   |
|acc-helm/nats                 |0.1.0    |0.1.0        	  |Accelleran NATS   |
|acc-helm/nkafka-helm          |0.3.0    |0.2.4           |A Helm chart for Kubernetes   |
|acc-helm/ntp-server           |0.1.0    |0.1.0           |NTP-Server for the Accelleran Cells   |   
|acc-helm/oran-clustercontrol  |0.1.0    |latest          |The dRAX Radio Service Orchestrator   |     
|acc-helm/prometheus           |10.3.1   |2.15.2          |Prometheus is a monitoring system and time seri...   |
|acc-helm/provisioner          |0.8.0    |0.6.0           |The Accelleran provisioner for bootstrap files   |
|acc-helm/provisioner-dhcp     |0.1.3    |0.1.4           |A DHCP service for Provisioner discovery   |
|acc-helm/redis                |0.4.2    |redis20190206   |Accelleran dRAX Redis   |

NOTE: Please visit the subfolders in this repo to view the README of specific Helm Charts.

## Latest Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 12.06.2020.

### Added

- Added xapp framework charts
- - Added redis
- - Added api
- Added oran-clustercontrol to main helm charts
- - Still using AppVersion latest for testing

### Changed

- Updating beta charts drax and oran-clustercontroler
- Updated dash-fbe to 0.15.0
- - It now has the netconf and rest apis
- Updated acc-dashboard to 0.19.0
- - Using dash-fbe 0.15.0
- Updated drax to 0.7.2
- - Using oran-clustercontrol 0.1.0

