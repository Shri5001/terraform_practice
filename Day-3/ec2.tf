resource "aws_instance" "ce2" {
  ami = var.ami_id
  instance_type = var.inst_type
  key_name = var.key
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids =[aws_security_group.cust_sg.id]
  tags = {
    Name="ec2"
  }
}