provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "ec2" {
  ami           = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    Name = "EC2 from Terraform"
  }
}

variable "ami_value" {
  type    = string
  default = "ami-0b89f7b3f054b957e"
}

variable "instance_type_value" {
  type    = string
  default = "t2.micro"
}
