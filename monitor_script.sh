#!/bin/bash

####################################################
# Author: Almoiz
# Date: 16-December-2024
#
# Version: Draft
# This Script will report the AWS resource usage
####################################################

set -x

# Resources Tracked
# AWS EC2
# AWS Lambda
# AWS IAM Users

# Define the output file location
OUTPUT_FILE="/home/ubuntu/Resources"  # Or any path you prefer

# List S3 Buckets
echo "List of S3 Buckets" > $OUTPUT_FILE
aws s3 ls >> $OUTPUT_FILE

# List EC2 Instances
echo "List of EC2 Instances" >> $OUTPUT_FILE
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> $OUTPUT_FILE

# List AWS Lambda Functions
echo "List of AWS Lambda Functions" >> $OUTPUT_FILE
aws lambda list-functions >> $OUTPUT_FILE

# List IAM users
echo "List of IAM Users" >> $OUTPUT_FILE
aws iam list-users >> $OUTPUT_FILE

