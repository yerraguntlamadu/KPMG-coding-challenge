module "main" {
  source        = "./Modules"
  vpc_name      = var.vpc_name
  subnet_name   = var.subnet_name
  firewall_name = var.firewall_name
  #Instance template values 
  service_account_id    = var.service_account_id
  service_account_name  = var.service_account_name
  region                = var.region
  network               = module.main.net
  subnet_work           = module.main.sub
  intance_template_name = var.intance_template_name
  # Autoscale folder values 
  com_autoscale_name = var.com_autoscale_name
  com_instancegroup  = var.com_instancegroup
  com_healthcheck    = var.com_healthcheck
  instance_template  = module.main.instanceid
  # Backend Service folder values
  http_health_check    = var.http_health_check
  backedn_service_name = var.backedn_service_name
  group                = module.main.instance_group_Module_manager
  # Loadbalancer folder Values
  http_proxy_name   = var.http_proxy_name
  url_map           = var.url_map
  forward_rule_name = var.forward_rule_name
  default_service   = module.main.backend_module_id
  # Database Folder code
  instance_name_db = var.instance_name_db
  datbase_name     = var.datbase_name

}


