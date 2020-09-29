#!/bin/bash
cd elasticsearch-docker && docker-compose up --build -d
cd ..
cd cortex-vagrant && vagrant up
cd ..
cd misp-vagrant && vagrant up
cd ..
cd thehive-vagrant && vagrant up
