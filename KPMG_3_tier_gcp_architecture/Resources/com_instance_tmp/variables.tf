variable "service_account_id" {
    type = string
    description = "Provide service account ID"
}

variable "service_account_name" {
    type = string
    description = "Service Account name"
}

variable "intance_template_name" {
    type = string
    description = "Instance template name"
}
variable "machine_type" {
    type = string
    default = "f1-micro"
}

variable "region" {
    type = string
    default = "us-central1"
}
variable "source_image" {
    type = string
    default = "centos-cloud/centos-7"
}

variable "network" {
    type = string
}

variable "subnet_work" {
  type = string
}
