provider "aws" {
  region = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}

resource "aws_instance" "dynamic_ec2_instance" {
  ami = var.AWS_AMI[var.AWS_REGION]
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-97f2cfe1"]
  key_name = "devops--nmn"
  tags = {
    Name = "terraform_dynamic"
  }
}
