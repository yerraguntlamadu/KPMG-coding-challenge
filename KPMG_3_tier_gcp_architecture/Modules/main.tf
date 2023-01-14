
module "vpc_main" {
    source = "../Resources/Vpc_subnet"
    vpc_name = var.vpc_name
    subnet_name = var.subnet_name
    firewall_name = var.firewall_name
}

module "intance_template_module" {
    source = "../Resources/com_instance_tmp"
    network = module.vpc_main.vpc_id
    subnet_work = module.vpc_main.subnet_id_name
    service_account_id = var.service_account_id
    service_account_name = var.service_account_name
    region = var.region
    intance_template_name = var.intance_template_name
    depends_on = [
      module.vpc_main
    ]
}

module "autoscale_instancegroup" {
  source = "../Resources/Autoscalar"
  com_healthcheck = var.com_healthcheck
  com_instancegroup = var.com_instancegroup
  instance_template = module.intance_template_module.ins_id
  com_autoscale_name = var.com_autoscale_name

}

module "backend_service" {
    source = "../Resources/Backend_service"
    http_health_check = var.http_health_check
    backedn_service_name = var.backedn_service_name
    group = module.autoscale_instancegroup.instance_group_manager
}

module "loadbalancer" {
    source = "../Resources/Loadbalancer"
    http_proxy_name = var.http_proxy_name
    default_service = module.backend_service.backend_id
    url_map = var.url_map
    forward_rule_name = var.forward_rule_name
}

module "database" {
    source = "../Resources/database"
    datbase_name = var.datbase_name
    instance_name_db = var.instance_name_db
}
