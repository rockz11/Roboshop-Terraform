module "ec2" {
  count = length(var.instances)
  source = "./ec2"
  instance_name = var.instance[count.index]
}

module "route53" {
  count = length(var.instances)
  source = "./route53"
  instance_name = var.instances[count.index]
  ip_address = module.ec2
}