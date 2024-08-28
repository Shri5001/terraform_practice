variable "ami" {
  type = string
  default = ""
}

variable "instance_type" {
  type = string
  default = ""

}

variable "key_name" {
  type = string
  default = ""
}

variable "cidr_block-vpc" {
    type = string
  default = ""
}

variable "cidr_block-pub" {
    type = string
    default = ""

}

variable "cidr_block-pri" {
  type = string
  default = ""
}

variable "vpc_tags" {
  type = string
  default = ""
}

variable "IG_Tags" {
  type = string
  default = ""
}

variable "subnet-public" {
  type = string
  default = ""
}

variable "subnet-public-2" {
  type = string
  default = ""
}

variable "IG_cidr_block" {
  type = string
  default = ""
}

variable "TCP_ingress" {
  type = string
  default = ""
}

variable "cidr_Ingress" {
  type = string
  default = ""
}

variable "protocol_egress" {
  type = string
  default = ""
}

variable "SG_Name" {
  type = string
  default = ""
}