# Cortex Guide - S
The Hive Project for this guide will run on top of Linux operating system.

## Table of Contents
* [Vagrant Spec](#vagrant-spec)
* [Running Vagrant](#running-vagrant)
* [Configure The Hive](#configure-the-hive)

### Vagrant Spec
* Ubuntu 18.04
* 2 Core CPU
* 1 GB Memory
### Running Vagrant
Vagrant script will do the installtion of The Hive by default.
```
$ vagrant up
```

### Configure Cortex
Working Directory: `/opt/cortex`

1. Change the secret key
```
$ vagrant ssh

or 

$ ssh - .vagrant/machines/default/virtualbox/private_key vagrant@127.0.0.1 -p 2202

and

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

## Start The Hive
To start The Hive
```
$ sudo service thehive start
```

The Hive URL: `http://192.168.90.90:9000` or `http://thehive-master1.vm:9000`

## Debugging
1. First you need to enable debug mode,open `logback.xml` ,find and edit this line
```
<configuration debug="false">
```

to 
```
<configuration debug="true">
```

restart The Hive.

2. To trace application logs,run
```
$ tail -f /var/log/thehive/application.log
```

If something went wrong, i.e could not open Cortex using browser,check if Cortex service is running
```
$ sudo service cortex status
$ sudo service cortex restart
```
