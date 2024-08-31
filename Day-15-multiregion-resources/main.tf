# ------------ Provider block with alias {alias= seoul}
provider "aws" {
  region = "ap-northeast-2"
  alias = "seoul"
}

# ---------- Provider block with alias {alias= tokyo } ----------------------
provider "aws" {
  region = "ap-northeast-1"
  alias = "tokyo"
}

# ---------- Creation of resource in region 1 {ap-northeast-2} --------------------
resource "aws_s3_bucket" "s3-region-1" {
  bucket = "shri50012-seoul"
  provider = aws.seoul
}

#------------ Creation of resource in region 2 {ap-northeast-1} ------------------
resource "aws_s3_bucket" "s3-region-2" {
  bucket = "shri50032-tokyo"
  provider = aws.tokyo
}