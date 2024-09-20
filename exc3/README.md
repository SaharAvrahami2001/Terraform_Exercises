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
An EC2 instance should be created with the HTTPD server installed and running. Additionally, a security group should be created that allows inbound traffic on port 80, enabling HTTP access. The instance will be associated with this security group, allowing it to receive web traffic from anywhere. Also a new aws keypair will be created.


## Cleanup
To delete the created resources, run:
```
terraform destroy
```
