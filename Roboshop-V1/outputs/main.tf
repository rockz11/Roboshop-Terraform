# variable "url" {
#   default = "google.com"
# } # Declaration of a variable
# output "URL" {
#   value = example.com
# }
variable "trainer_name" {}
output "trainer_name" {
  value = var.trainer_name
}