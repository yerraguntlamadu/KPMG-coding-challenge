output "net" {
    value = module.vpc_main.vpc_id
}

output "sub" {
    value = module.vpc_main.subnet_id_name
}

output "instanceid" {
    value = module.intance_template_module.ins_id
}

output "instance_group_Module_manager" {
    value = module.autoscale_instancegroup.instance_group_manager
  
}

output "backend_module_id" {
    value = module.backend_service.backend_id
}