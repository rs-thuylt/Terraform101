# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

# Import module
module "ec2_module" {
  source = "./ec2"
}
