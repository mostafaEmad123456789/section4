#!/bin/bash


echo "[web]" > inventory.txt

aws ec2 describe-instances --query 'Reservations[*].Instances[*].[PublicIpAddress]'  --filters "Name=tag:project,Values=section4" --output text >> inventory.txt

cat inventory.txt