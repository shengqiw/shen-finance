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
  access_key = "AKIAVXVHRLCE437TPIXK"
  secret_key = "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"
}

resource "aws_instance" "shen-node-server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  security_groups = ["default"]
  tags = {
    Name = "Terrform CircleCi"
  }
}