variable "aws_region" {
  description = "The region in which to create the infrastructure"
  type        = string
  nullable    = false
  default     = "us-east-1" #here we need to define either us-west-2 or ap-northeast-2 if i give other region will get error 
  validation {
    condition = var.aws_region == "us-west-2" || var.aws_region == "ap-northeast-2"
    error_message = "The variable 'aws_region' must be one of the following regions: us-west-2, ap-northeast-2"
  }
}

provider "aws" {
  region = var.aws_region
   
 }

resource "aws_instance" "test" {
  ami = "ami-008d41dbe16db6778"
  instance_type = "t2.micro"
  key_name = "shrikey"
  tags = {
    Name = "Shrikrishna"
  }
}