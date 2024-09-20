# Exercise 1: Create an EC2 instance with a Provider file

## Objective
This exercise demonstrates how to create an EC2 instance on AWS using Terraform, while managing provider configurations in a separate file.

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
A new EC2 instance should be created in your AWS account.

# Cleanup
To delete the created resources, run:
```
terraform destroy
```
