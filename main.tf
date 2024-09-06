terraform {
  backend "s3" {
    bucket         = "tfstate0609"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

# Example resource
resource "aws_instance" "example" {
  ami           = "ami-02c21308fed24a8ab"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
