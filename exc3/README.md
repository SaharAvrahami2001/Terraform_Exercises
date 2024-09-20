# Exercise 3: Launch an EC2 Instance with Provisioners

## Objective
This exercise demonstrates how to launch an EC2 instance on AWS using Terraform, and to configure it using provisioners to install software or run scripts post-deployment.

## Prerequisites
- An AWS account with appropriate permissions to create EC2 instances.
- AWS CLI configured with `aws configure`.
- Terraform installed.

## Steps to Run
1. Initialize Terraform:
```
terraform init
```
2. Apply the configuration:
```
terraform apply
```

## Expected Outcome
An EC2 instance should be created with the HTTPD server installed and running. Additionally, a new AWS key pair should be created for secure SSH access to the instance.

## Cleanup
To delete the created resources, run:
```
terraform destroy
```
