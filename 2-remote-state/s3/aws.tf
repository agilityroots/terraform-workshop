terraform {
  backend "s3" {
    bucket = "agilityroots-workshops"
    key    = "terraform-data/examples/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config {
    bucket = "agilityroots-workshops"
    key    = "terraform-data/examples/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
