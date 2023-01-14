variable "vpc_name" {
  type        = string
  description = "VPC Name"
}
variable "subnet_name" {
  type        = string
  description = "Subnet Name"
}
variable "firewall_name" {
  type        = string
  description = "Firewall Name"
}

##########################################
# Instance template & Service account Variables 
##################################################

variable "service_account_id" {
  type        = string
  description = "Provide service account ID"
}

variable "service_account_name" {
  type        = string
  description = "Service Account name"
}

variable "intance_template_name" {
  type        = string
  description = "Instance template name"
}

variable "region" {
  type = string
}

##########################################
# Autoscale & Instance group manager variables
##################################################

variable "com_healthcheck" {
  type = string
}

variable "com_instancegroup" {
  type = string
}

variable "com_autoscale_name" {
  type = string
}
############################################33
# Backend Folder values 
########################################

variable "http_health_check" {
  type = string
}
variable "backedn_service_name" {
  type = string
}

######################################################
# Loadbalancer folder values
#####################################################
variable "http_proxy_name" {
  type = string
}

variable "url_map" {
  type = string

}
variable "forward_rule_name" {
  type = string
}

######################################################
# Database folder Values 
#####################################################

variable "datbase_name" {
  type = string
}
variable "instance_name_db" {
  type = string
}