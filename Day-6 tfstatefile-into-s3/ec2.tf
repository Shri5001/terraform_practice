resource "aws_instance" "linux" {
  ami = "ami-0c2acfcb2ac4d02a0"
  instance_type = "t2.micro"
  key_name = "shrikey"
  tags = {
    Name="linux_instance"
  }
}