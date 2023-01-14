variable "forward_rule_name" {
    type = string
}
variable "ip_protocol" {
    type = string
    default = "TCP"
}
variable "ip_version" {
    type = string
    default = "IPV4"
}
variable "load_balancing_scheme" {
    type = string
    default = "EXTERNAL"
}
variable "port_range" {
    type = number
    default = 80
}

variable "http_proxy_name" {
    type = string
}
variable "default_service" {
    type = string
}
variable "url_map" {
    type = string
  
}