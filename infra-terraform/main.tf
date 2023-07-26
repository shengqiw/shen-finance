terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "app-server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  security_groups = ["default"]
  tags = {
    Name = "CircleCi Terraform EC2 try 2"
  }
}
