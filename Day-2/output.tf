output "publicip" {
    description = "Printing the value of public ip of instance"
    value = aws_instance.name.public_ip
}
output "privateip" {
  description = "printing value for private ip"
  value = aws_instance.name.private_ip
  sensitive = true
}