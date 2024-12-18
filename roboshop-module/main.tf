module "roboshop" {
  for_each = var.instances
  source = "./module"
  component_name = each.key
}
variable "instances" {
  default = [
    "frontend",
    "mongodb",
    "catalogue",
    "cart",
    "user",
    "redis",
    "mysql",
    "shipping",
    "payment",
    "rabbitmq",
    "dispatch",

  ]
}