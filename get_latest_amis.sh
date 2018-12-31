#!/bin/bash

aws ssm get-parameters --names /aws/service/ecs/optimized-ami/amazon-linux-2/recommended --region us-east-1 |  jq -r '.Parameters[0].Value' |  jq -r '.image_id'
