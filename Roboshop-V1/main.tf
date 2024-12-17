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