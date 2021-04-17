terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "ec2example" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-Instance-Example"
  }
}
