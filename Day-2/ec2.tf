resource "aws_instance" "name" {
    ami = var.ami-id
    instance_type = var.type
    key_name = var.key
    tags = {
      Name = "test"
    }
}