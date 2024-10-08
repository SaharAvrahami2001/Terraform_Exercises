resource "aws_key_pair" "terra_key" {
  key_name   = "terra_key"
  public_key = file("terrakey.pub")
}

resource "aws_instance" "terra_instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.terra_key.key_name
  vpc_security_group_ids = ["sg-0bd9870dd88007feb"]
  tags = {
    Name    = "Terra-Instance-4"
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

output terra-publicIP {
  value       = aws_instance.terra_instance.public_ip
}

output terra-privateIP {
  value       = aws_instance.terra_instance.private_ip
}