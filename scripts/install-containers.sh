#!/bin/bash

ansible-pull --checkout master --directory /opt/ansible-pull-infrastructure-box --inventory-file=/tmp/inventory --module-name=git  --url=https://github.com/kurron/ansible-pull-infrastructure-box.git --verbose playbook.yml

