provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "shri" {
  ami = "ami-008d41dbe16db6778"
  instance_type = "t2.micro"
  key_name = "shrikey"
  user_data = file("script.sh")
}

