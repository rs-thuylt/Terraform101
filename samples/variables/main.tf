# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

# Create an EC2 instance
resource "aws_instance" "ec2" {
  ami           = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    Name = "EC2 from Terraform"
  }
}

# Create `ami_value` variable
variable "ami_value" {
  type    = string
  default = "ami-0b89f7b3f054b957e"
}

# Create `instance_type_value` variable
variable "instance_type_value" {
  type    = string
  default = "t2.micro"
}
