resource "aws_instance" "exc2" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "web01-key"
  vpc_security_group_ids = ["sg-0bd9870dd88007feb"]
  tags = {
    Name    = "Terra-Instance-2"
    Project = "Terraform"
  }
}