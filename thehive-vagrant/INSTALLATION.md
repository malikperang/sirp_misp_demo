# The Hive Project Guide - SIRP
The Hive Project for this guide will run on top of Linux operating system.

## Table of Contents
* [Running Vagrant](#running-vagrant)
* [Configure The Hive](#configure-the-hive)

### Running Vagrant
```
$ vagrant up
```

### Configure The Hive
Change the secret 
```
$ vagrant ssh
$ sudo vim /etc/thehive/application.conf
```

Under `Secret Key` section,find 
```
play.http.secret.key="***changeme***"
```
and change the key to `sirpmisp321`

Under `Elasticsearch` block,find 
```
uri = "http://127.0.0.1:9200"
```

and change the `uri` IP Address to your Host IP address. i.e 
```
uri = "http://192.168.0.157:9200"
```

where `192.168.0.157` is my Host PC IP Address.

## Debugging
To trace application logs,run
```
$ tail -f /var/log/thehive/application.log
```
