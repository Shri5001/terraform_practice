provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "ec2" {
  ami = "ami-008d41dbe16db6778"
  instance_type = "t2.micro"
  key_name = "shrikey"
  count = length(var.names)

  tags = {
    #Name = "aws-web ${count.index}"
    Name = var.names[count.index]
  }
}

variable "names" {
  type = list(string)
  default = [ "Dev","Test","Prod" ]
}