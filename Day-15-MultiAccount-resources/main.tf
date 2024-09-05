provider "aws" {
  profile = "Akshay"
  alias ="ak-profile"
  # region is ap-northeast-2 by deafault at the time of 
}
provider "aws" {
  profile = "Yogita"
  alias = "yd-profile"
}
resource "aws_s3_bucket" "akshay-bucket" {
  bucket = "shri5002-akshay"
  provider = aws.ak-profile
}

resource "aws_s3_bucket" "yogita-bucket" {
  bucket = "shri5002-yogita"
  provider = aws.yd-profile
}