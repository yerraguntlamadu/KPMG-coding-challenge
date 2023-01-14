variable "vpc_name" {
    type = string
    description = "VPC Name"
}
variable "subnet_name" {
    type = string
    description = "Subnet Name"
}
variable "firewall_name" {
    type = string
    description = "Firewall Name"
}
variable "cidr_range" {
    type = string
    default = "10.0.0.0/28"
    description = "Cidr Range details"
}
variable "region" {
    type = string
    default = "us-central1"
    description = "Region Name"
}

variable "auto_create" {
    type = bool
    default = false
}
