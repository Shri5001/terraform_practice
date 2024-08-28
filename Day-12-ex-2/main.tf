provider "aws" {
  region = "ap-northeast-2"
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single"
  ami ="ami-008d41dbe16db6778"

  instance_type          = "t2.micro"
  key_name               = "shrikey"
  # monitoring             = true
  subnet_id              = "subnet-0ea6302db7a790ea3"

  
}