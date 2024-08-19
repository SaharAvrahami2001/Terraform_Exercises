terraform {
  backend "s3" {
    bucket = "terra-state-sahar"
    key    = "Terraform/backend"
    region = "us-east-1"
  }
}