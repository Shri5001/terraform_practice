resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = "shri50021"
}
resource "aws_s3_bucket_versioning" "s3_bucket_ver" {
    bucket = aws_s3_bucket.aws_s3_bucket.id
    versioning_configuration {
      status = "Enabled"
    }
}


