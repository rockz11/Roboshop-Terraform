# variable "URL" {
#   default = "google.com"
# }
# output "URL" {
#   value = var.URL # Accessing a variable. important Using double quotes in output's value Here terraform considers this as string ans prints as it ,instead of desired ones.
# }
# # Variable is a combination of some other string .Then we have to use ${}
# output "URL1" {
#   value = "URL - ${var.URL}"
#}
resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0b308c7134616a7ce"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z00196431INWTJ0O5YT57"
  name    = "frontend-dev.devops11.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
output "public_ip" {
  value = aws_instance.frontend.private_ip
}
