variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-west-1 = "ami-0ae8f15ae66fe8cda"
    # amazon linux machine for Notrth Califorina region
    us-east-1 = "ami-04a81a99f5ec58529"
    # ubuntu machine for Notrth Virginia region
  }
}