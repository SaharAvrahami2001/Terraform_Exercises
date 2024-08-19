terraform {
  backend "s3" {
    bucket = "terra-state-sahar"
    key    = "Terraform/backend-exc6"
    region = "us-east-1"
  }
}