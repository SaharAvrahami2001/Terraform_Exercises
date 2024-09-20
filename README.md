# Terraform Exersices

## Description
This repository contains exercises designed to help understand and practice Terraform, an infrastructure as code tool. The exercises cover various aspects of Terraform, including resource management, modules, and state management.

## Prerequisites
- Terraform installed
- An AWS Account
- Admin user with acess key to the AWS account

## Setup Instructions
1. Clone the repository:
```
git clone https://github.com/SaharAvrahami2001/Terraform_Exercises.git
cd Terraform_Exercises
```
2. Connect to your AWS account by running:
```
aws configure
```
Make sure to use an admin user for the setup.
3. shift to each _exc_ folder and run:
```
cd <exercise-folder-name>
terraform apply
```
4. Once you are done, run the following command to delete the created resources:
```
terraform destroy
```
