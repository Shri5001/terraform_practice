resource "aws_instance" "ec2" {
  ami="ami-008d41dbe16db6778"
  instance_type ="t2.nano"
  key_name= "shrikey"
  tags={
    Name="Linux"
  }
}