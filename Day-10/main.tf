provider "aws" {
  region = "ap-northeast-2"
}

data "aws_ami" "amzlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}

data "aws_subnet" "my_subnet" {
  filter {
    name   = "tag:Name"
    values = ["my-pvt-sn"]
  }
}

resource "aws_instance" "dev" {
  ami = data.aws_ami.amzlinux.id
  instance_type = "t2.micro"
  key_name = "shrikey"
  tags = {
    Name= "my-new-user"
  }
  subnet_id = data.aws_subnet.my_subnet.id
}

resource "aws_s3_bucket" "s3" {
    bucket = "shri5002" 
}