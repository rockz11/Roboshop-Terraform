resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z00196431INWTJ0O5YT57"
  name    = "${var.instances[count.index]}-dev.devops11.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[count.index].private_ip]

}