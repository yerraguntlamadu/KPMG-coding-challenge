variable "datbase_name" {
    type = string
}

variable "collation" {
    type = string
    default = "utf8_general_ci"
}
variable "charset" {
    type = string
    default = "utf8"
}

variable "instance_name_db" {
    type = string
}

variable "database_version" {
    type = string
    default = "MYSQL_5_7"
}

variable "tier" {
    type = string
    default = "db-n1-standard-2"
}