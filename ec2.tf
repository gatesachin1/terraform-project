terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "tf_instance" {
    ami             = "ami-08982f1c5bf93d976"
    instance_type   = "t2.micro"
    key_name        = "N.Virginia-Linux-key-pair"

    tags = {
        Name  = "Dev-Instance"
        Owner = "Sachin" 
    }

}
