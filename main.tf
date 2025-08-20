provider "aws" {
  region     = "<enter your region>"
  access_key = "<enter yours>"
  secret_key = "<enter yours>"
}

resource "aws_vpc" "xyz_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "<your resource name>" {
  vpc_id     = aws_vpc.xyz_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private_subnet"
  }
}

resource "aws_subnet" "<your resource name>" {
  vpc_id     = aws_vpc.xyz_vpc.id
  cidr_block = "10.0.10.0/24"
  tags = {
    Name = "public_subnet"
  }
}

resource "aws_s3_bucket" "examplebucket" {
  bucket = "#choose a unique name of s3 bucket"
}


