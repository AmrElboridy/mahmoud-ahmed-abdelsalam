#!/bin/bash

user=(DevTeam  OpsTeam)
group=webAdmins
i=0

sudo groupadd webAdmins
for value in "${user[@]}"
do
  sudo useradd -G $group $value
done
