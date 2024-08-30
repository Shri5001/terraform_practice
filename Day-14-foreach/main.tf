provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "ec2" {
  ami = "ami-008d41dbe16db6778"
  instance_type = "t2.micro"
  key_name = "shrikey"
  for_each = toset(var.name)

  tags = {
    Name = each.value
  }
}
variable "name" {
  type = list(string)
  default = [ "shri", "Rohan" ]
}