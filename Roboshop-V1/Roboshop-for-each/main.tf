terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
variable "instances" {
  default = {
    frontend = {}
    cart = {}
    catalogue = {}
    user = {}
    shipping = {}
    payment = {}
    mysql = {}
    mongodb = {}
    rabbitmq = {}
    redis = {}
  }

}
resource "aws_instance" "instance" {
  for_each = var.instances
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0b308c7134616a7ce"]
  tags = {
    Nmae = each.key
  }
}
resource "aws_route53_record" "record" {
  for_each = var.instances
  name    = "${each.key}-dev.devops11.online"
  type    = "A"
  zone_id = "Z00196431INWTJ0O5YT57"
  records = [aws_instance.instance[each.key].private_ip]
}