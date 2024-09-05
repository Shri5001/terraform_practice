locals {
  region = "ap-northeast-2"
  environment = "dev"
  instance_type = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-008d41dbe16db6778" # Amazon Linux 2 AMI
  instance_type = local.instance_type

  tags = {
    Name        = "ExampleInstance"
    Environment = local.environment
  }
}