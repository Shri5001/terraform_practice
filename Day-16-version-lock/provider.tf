
# for the specific version to use

# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "4.20.0"  
#     }
#   }
# }

# provider "aws" {
#   region = "ap-northeast-2"
# }

# used for the any version in between of the two versions
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.10.0, < 5.0.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}