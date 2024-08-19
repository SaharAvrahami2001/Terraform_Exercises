variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "ZONE2" {
  default = "us-east-1b"
}

variable "ZONE3" {
  default = "us-east-1c"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-west-1 = "ami-04a81a99f5ec58529"
    # ubuntu machine for Notrth Califorina region
    us-east-1 = "ami-0ae8f15ae66fe8cda"
    # amazon linux machine for Notrth Virginia region
  }
}

variable "USER" {
  default = "ec2-user"
}

variable "PUB_KEY" {
  default = "terrakey.pub"
}

variable "PRIV_KEY" {
  default = "terrakey"
}

variable "MYIP" {
  default = "192.168.0.103/32"
}