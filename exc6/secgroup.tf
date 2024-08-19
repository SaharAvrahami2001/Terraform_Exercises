resource "aws_security_group" "terra_new_sg" {
  vpc_id      = aws_vpc.teraa_vpc.id
  name        = "terra_new_sg"
  description = "Sec Group for terraform ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.MYIP]
  }
  tags = {
    Name = "allow ssh"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}