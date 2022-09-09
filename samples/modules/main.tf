provider "aws" {
  region = "ap-southeast-1"
}

module "ec2_module" {
  source = "./ec2"
}
