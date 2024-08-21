output "ec2_name" {
    value = aws_instance.ce2.tags
}
output "ec2_ami" {
  value = aws_instance.ce2.ami
}
output "vpc_name" {
  value = aws_vpc.cust_vpc.tags
}
output "az_ec2" {
  value = aws_instance.ce2.availability_zone
}
output "ec2-public_ip" {
  value = aws_instance.ce2.public_ip
}
output "ec2-private_ip" {
  value = aws_instance.ce2.private_ip
}
