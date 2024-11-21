
# AWS Resource Usage Monitoring Script


## Features

- Lists all **S3 Buckets** in your AWS account.
- Retrieves details of **EC2 Instances** and their IDs.
- Fetches all **AWS Lambda Functions** deployed in the account.
- Lists all **IAM Users** present in the account.

---

## Prerequisites

### 1. **AWS CLI Installation**
Ensure that the AWS CLI is installed on your system. If not, install it using:
```bash
sudo apt install awscli
```
or follow the [AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

### 2. **jq Installation**
This script uses `jq` to parse JSON output. Install it using:
```bash
sudo apt install jq
```

### 3. **AWS Credentials Configuration**
Make sure your AWS CLI is configured with the appropriate credentials:
```bash
aws configure
```
Provide your:
- Access Key ID
- Secret Access Key
- Default Region
- Output Format (e.g., JSON)

---

## Usage

### 1. **Set Execution Permissions**
Make the script executable:
```bash
chmod +x monitor_aws_resources.sh
```

### 2. **Run the Script**
Execute the script as follows:
```bash
./monitor_aws_resources.sh
```

### 3. **Output Location**
The script saves the resource usage report to the file specified by `OUTPUT_FILE`. By default, the output file is set to:
```
/home/ubuntu/Resources
```
You can change this path in the script as needed.

---

## Script Details

### Tracked AWS Resources
1. **S3 Buckets**: Uses `aws s3 ls`.
2. **EC2 Instances**: Uses `aws ec2 describe-instances` and extracts instance IDs with `jq`.
3. **Lambda Functions**: Uses `aws lambda list-functions`.
4. **IAM Users**: Uses `aws iam list-users`.

### Output File
The script appends data to the file specified in `OUTPUT_FILE`.

---

## Notes

- The script is in its **draft version** as of `16-November-2024`.
- Ensure you have sufficient permissions for the AWS resources being queried.
- Customize the `OUTPUT_FILE` path to suit your environment.

---

## Author

- **Name**: Almoiz
- **Date**: 16-November-2024

---
