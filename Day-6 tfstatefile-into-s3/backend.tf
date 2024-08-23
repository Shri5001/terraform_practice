terraform {
  backend "s3" {
    bucket = "shri5002"
    key = "terraform.tfstate"
    region = "ap-northeast-2"
  }
}