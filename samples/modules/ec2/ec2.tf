# Create an EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 from Terraform"
  }
}

# Export `ec2_instance_id` value
output "ec2_instance_id" {
  value = aws_instance.ec2.id
}
