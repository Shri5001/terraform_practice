resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.inst_type
  key_name = var.key
  
  tags = {
    Name ="linux"
  }                                                         
}