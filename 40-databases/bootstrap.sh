#!/bin/bash
component=$1
dnf install ansible -y
ansible-pull -U https://github.com/prasadGotIT/ansible-roboshop-roles-tf.git -e component=$component component.yaml
