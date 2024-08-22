resource "aws_instance" "dev" {
  ami = "ami-0c2acfcb2ac4d02a0"
  availability_zone = "ap-northeast-1b"
  instance_type = "t2.nano"
  key_name = "shrikey"
  tags = {
    Name = "Dev"
  }

  
#--------------------any rule you can try -------------------------
#   lifecycle {
#    prevent_destroy = true    # terraform will get error while destroying the resources
#   }

#    lifecycle {
#      ignore_changes = [ tags ]   # terraform will never updates these objects which are added to this ignore
#    }

#   lifecycle {
#      create_before_destroy = true   # terraform will create one object first and then destroy
#    }

}