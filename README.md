# Global Edge Geo DNS WAF

## Overview
This project provisions a global edge architecture using AWS services:
- Route 53 for geo-based DNS
- CloudFront as the global edge distribution
- AWS WAF for security
- Regional VPC + ALB + EC2 app in `us-east-1` and `ap-south-1`

## Requirements
- Terraform >= 1.6
- AWS CLI configured
- An AWS account with permissions for Route 53, CloudFront, WAF, EC2, and IAM

## Usage
```bash
cd envs/dev
terraform init
terraform apply -auto-approve
