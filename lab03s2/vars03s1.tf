
variable "rg2" {
  default     = "TerraformRG"
  type        = string
  description = "This is the resource group to host the other resource"

}

variable "location" {
  default = "Canada East"

}

variable "vnet" {
  default = "network-vnet"

}

variable "vnet_space" {
  default = ["10.0.0.0/16"]

}

variable "subnet1" {
  default = "network-subnet01"

}

variable "subnet2" {
  default = "network-subnet02"

}

variable "subnet_space1" {
  default = ["10.0.1.0/24"]

}


variable "subnet_space2" {
  default = ["10.0.2.0/24"]

}

variable "nsg1" {
  default = "Network-nsg1"

}

variable "nsg2" {
  default = "Network-nsg2"

}

