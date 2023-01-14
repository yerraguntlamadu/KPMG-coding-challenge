variable "http_health_check" {
    type = string
  }
variable "backedn_service_name" {
    type = string
  }
    variable "check_interval_sec" {
    type = number
    default = 1 
  }
  variable "timeout_sec" {
    type = number
    default = 1
  }
  variable "balancing_mode" {
    type = string
    default = "UTILIZATION"
  }
  variable "group" {
    type = string
  }