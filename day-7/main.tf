provider "aws" {
  region = "ap-northeast-2"
  
}
#-------store the statefile ------#
resource "aws_s3_bucket" "test" {
  bucket = "shri5002"
  
  
}
#-------Locking provision for statefile -------------------#
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}