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
  access_key = "AKIAVXVHRLCE5VOPFEGQ"
  secret_key = "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"
}

resource "aws_instance" "app-server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  security_groups = ["default"]
  tags = {
    Name = "Terraform EC2"
  }
}
