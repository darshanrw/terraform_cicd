provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "group2_instance" {
  ami           = "ami-070f589e4b4a3fece"
  instance_type = "t2.micro"
  count         = var.core_count

  tags = {
    Name = "group2_instance"
  }
}
