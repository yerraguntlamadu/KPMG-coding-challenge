variable "com_healthcheck" {
    type = string
}
variable "check_interval_sec" {
    type = number
    default = 5
}
variable "timeout_sec" {
    type = number
    default = 5
}
variable "healthy_threshold" {
    type = number
    default = 2
}
variable "unhealthy_threshold" {
    type = number
    default = 10
}
variable "com_instancegroup" {
    type = string
}
variable "base_instance_name" {
    type = string
    default = "kpmg"
}
variable "zone" {
    type = string
    default = "us-central1-a" 
}
variable "target_size" {
    type = number
    default = 1 
}
variable "instance_template" {
    type = string  
}

variable "com_autoscale_name" {
    type = string 
}


