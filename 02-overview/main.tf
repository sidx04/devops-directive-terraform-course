terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-05e86b3611c60b0b4" # Ubuntu 22.04 LTS amd64 on us-east-1
  instance_type = "t3.micro"              # needs amd64

  tags = {
    Name = "terraform-hello"
  }
}
