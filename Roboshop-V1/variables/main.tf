variable "URL" {
  default = "google.com"
}
output "URL" {
  value = var.URL # Accessing a variable. important Using double quotes in output's value Here terraform considers this as string ans prints as it ,instead of desired ones.
}
# Variable is a combination of some other string .Then we have to use ${}
output "URL1" {
  value = "URL - ${var.URL}"
}