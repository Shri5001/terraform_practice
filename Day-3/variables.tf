variable "ami_id" {
  description = "Value of the ami-id"
  type = string
  default = ""
}
variable "inst_type" {
  description = "instance type value"
  type = string
  default = ""
}
variable "key" {
  description = "name of the keypair"
  type = string
  default = ""
}
variable "cidr-range-vpc" {
  description = "cidr range for the vpc"
  type = string
  default = ""
}
variable "cidr-range-sn-pub" {
  description = "cidr range for the public subnet"
  type = string
  default = ""
}
variable "cidr-range-sn-pvt" {
    description = "cidr range for private sunbet"
    type = string
    default = ""
}
variable "cidr-range-edit-rt" {
 description = "cidr range for the edit routes"
 type= string 
 default = ""
}
variable "az-pub-sn" {
  description = "availibility zone for public subnet"
  type = string
  default = ""
}
variable "az-pvt-sn" {
    description = "Availibilty zone for private subnet"
  type = string
  default = ""
}
variable "ingress-port-ssh" {
    description = "ingress port number for ssh protocol"
  type = string
  default = ""
}
variable "ingress-port-http" {
  description = "ingress port number for http protocol"
  type = string
  default = ""
}
variable "ingress-protocol" {
  description = "ingress protocol as tcp"
  type = string
  default = ""
}
variable "egress-port" {
  description = "egress port no for all traffic as 0"
  type = string
  default = ""
}
variable "egress-protocol" {
  description = "egress protocol for allowing all protocol is -1"
  type = string
  default = ""
}
variable "cidr-range-sg" {
    description = "cidr range for sg"
    type = string
    default = ""
  
}