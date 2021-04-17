provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "bucket-test-terraform"
  acl = "private"

  tags = {
    Name = "Bucket created by Terraform"
    Envrionment = "Dev"
  }

  versioning {
    enabled = true
  }
}