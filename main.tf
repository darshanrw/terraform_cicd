provider "aws" {
    region = "us-east-1"
}
    
resource "aws _instance" "group2_instance" {
ami = "ami-0c55b159cbfafe1f0"
instance_type = "t2.micro"
count = var.core_count

tags = {
    Name = "group2_instance"
}
}
