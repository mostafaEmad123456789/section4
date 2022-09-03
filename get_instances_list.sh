#!/bin/bash

privatekey="/home/mostafa/ansible/project3.pem"


echo "[web]" > /home/mostafa/ansible/inventory.txt

aws ec2 describe-instances --query 'Reservations[*].Instances[*].[PublicIpAddress]'  --filters "Name=tag:project,Values=section4" --output text >> /home/mostafa/ansible/inventory.txt

cat /home/mostafa/ansible/inventory.txt