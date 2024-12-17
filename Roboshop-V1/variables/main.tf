variable "URL" {
  default = "google.com"
}
output "URL" {
  value = var.URL
}
   # Accessing a variable. important Using double quotes in output's value Here terraform considers this as string ans prints as it ,instead of desired ones.

 # Variable is a combination of some other string .Then we have to use ${}
 output "URL1" {
   value = "URL - ${var.URL}"
}
# resource "aws_instance" "frontend" {
#   ami           = "ami-09c813fb71547fc4f"
#   instance_type = "t3.small"
#   vpc_security_group_ids = ["sg-0b308c7134616a7ce"]
#   tags = {
#     Name = "frontend"
#   }
# }
# resource "aws_route53_record" "frontend" {
#   zone_id = "Z00196431INWTJ0O5YT57"
#   name    = "frontend-dev.devops11.online"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.frontend.private_ip]
# }
# output "public_ip" {
#   value = aws_instance.frontend.private_ip
# }
# Data Types in Terraform
variable "num1" {
  default = 10
}
variable "bool1" {
  default = false
}
variable "srt1" {
  default = "Hello INDIA"
}
output "srt1" {
  value = var.srt1
}
variable "list" {
  default = [
    1, #[0]
    11, #[1]
    111, #
    1111
  ]
}
output "list" {
  value = var.list[3]
}
variable "map" {
  default = {
    aws = {
      trainer = "PRUDHVI RAJ"
      experience = 11
    }
    devops = {
      trainer = "Prabhas"
      experience = 16
    }
  }
}
output "map_aws_trainer" {
  value = var.map["aws"]["trainer"]
}
# Declare a empty variable and we can get the value from cli, Unlike ansible or shell we must and should declare a variablr to use it.
variable "trainer_name" {}
output "trainer_name" {
  value = var.trainer_name
}