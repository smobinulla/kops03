#!/bin/bash
export PATH=$PATH:/usr/local/bin
kops create cluster --name=mubeentech.shop \
      --state=s3://mubeentech.shop --zones=us-east-1a,us-east-1b,us-east-1c \
       --node-count=3 --master-count=3 --node-size=t3.medium --master-size=t3.medium \
       --master-zones=us-east-1a,us-east-1b,us-east-1c --master-volume-size=10 --node-volume-size=10 \
       --ssh-public-key ~/.ssh/id_rsa.pub \
       --dns-zone=mubeentech.shop
       sleep 60
       kops update cluter --name mubeentech.shop--yes --admin
