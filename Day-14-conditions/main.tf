provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.inst_type
  count = var.inst_type == "t2.micro" ? 1:0
  key_name = "shrikey"
  
  tags = {
    Name = "windows"
  }

}

variable "ami" {
  type = string
  default = "ami-008d41dbe16db6778"
}
variable "inst_type" {
    type = string
    default = "t2.micro" 
}