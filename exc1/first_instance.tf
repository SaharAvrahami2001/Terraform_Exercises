provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0ae8f15ae66fe8cda"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "web01-key"
  vpc_security_group_ids = ["sg-0bd9870dd88007feb"]
  tags = {
    Name    = "Terra-Instance"
    Project = "Terraform"
  }
}