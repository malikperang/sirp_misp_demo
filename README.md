# SIRP & MISP Demo
Hey there, here are the guide as well working PoC to up and run SIRP & MISP using [The Hive Project](https://thehive-project.org/),[Cortex](https://thehive-project.org/) & [MISP Project](https://www.misp-project.org).
This repository intended to provide references for me as well my SOC & CIRT team. Feel free to use it for education purpose.

## Requirements
* Vagrant
* Docker

## Documentations
* [ElasticSearch Setup]()
* [The Hive Setup](https://github.com/malikperang/sirp_misp_demo/blob/master/thehive-vagrant/INSTALLATION.md)
* [Cortex Setup](https://github.com/malikperang/sirp_misp_demo/blob/master/cortex-vagrant/INSTALLATION.md)
* [MISP Setup](https://github.com/malikperang/sirp_misp_demo/blob/master/misp-vagrant/INSTALLATION.md)

## Summary
* Elasticsearch URL: `http://<host-machine-ip>:9200` or `http://127.0.0.1:9200`
* Kibana URL: `http://<host-machine-ip>:5601` or `http://127.0.0.1:5601`
* The Hive URL: `http://192.168.90.90:9000` or `http://thehive-master1.vm:9000`
* Cortex URL: `http://`
* MISP URL: 

## Getting Started
Run the bash executable file to up all Vagrant VM's
```
$ ./up.sh
```

## Disclaimer!
This demo are still in development mode, information and stabilization will be updated from time to time.
