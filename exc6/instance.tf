resource "aws_key_pair" "terra_key" {
  key_name   = "terra_key"
  public_key = file("terrakey.pub")
}

resource "aws_instance" "terra_web" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.terra-pub-1.id
  key_name               = aws_key_pair.terra_key.key_name
  vpc_security_group_ids = [aws_security_group.terra_new_sg.id]
  tags = {
    Name    = "Terra-web"
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

resource "aws_ebs_volume" "vol_terra" {
  availability_zone = var.ZONE1
  size              = 3
  tags = {
    Name = "vol_terra"
  }
}

resource "aws_volume_attachment" "atch_vol_terra" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol_terra.id
  instance_id = aws_instance.terra_web.id
}

output "terra-publicIP" {
  value = aws_instance.terra_web.public_ip
}