provider "aws" {
  region = "ap-northeast-2"
}

module "day12" {

  source = "github.com/Shri5001/terraform_practice/Day-2"
    ami-id = "ami-008d41dbe16db6778"
    type = "t2.micro"
    key = "shrikey"
}