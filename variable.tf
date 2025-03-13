variable "cidr_block_vpc" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "cidr_block_public_sub" {
    type = string
    default = "10.0.0.0/24"
  
}

variable "az_pub_sub" {
    type = string
    default = "us-east-1a"
  
}

variable "az_private_sub" {
    type = string
    default = "us-east-1b"
  
}

variable "cidr_block_private_sub" {
    type = string
    default = "10.0.1.0/24"
  
}