resource "aws_key_pair" "terra_key" {
  key_name   = "terra_key"
  public_key = file("terrakey.pub")
}

resource "aws_security_group" "web_sg" {
  name        = "web_security_group"
  description = "Allow inbound traffic on port 80"

  inbound_rule {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow traffic from anywhere
  }

resource "aws_instance" "terra_instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.terra_key.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  tags = {
    Name    = "Terra-Instance-3"
    Project = "Terraform"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.USER
    private_key = file("terrakey")
    host        = self.public_ip
  }
}
