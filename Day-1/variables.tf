variable "ami" {
  description = "Inserting the value for the AMI "
  type        = string
  default     = "ami-0c2acfcb2ac4d02a0"
}

variable "inst_type" {
  description = "Inserting value for the instance type"
  type        = string
  default     = "t2.micro"
}

variable "key" {
  description = "inserting the value for the key"
  type        = string
  default     = "shrikey"
}