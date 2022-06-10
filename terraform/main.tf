provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.18.0"
    }
  }
}

data "aws_ami" "ami_squid" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "packer-api-cep"
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ami_squid.id
  instance_type = "t2.micro"

  tags = {
    Name = "Squid"
  }
}

output "id_ami" {
  value = data.aws_ami.ami_squid.id
}