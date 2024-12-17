variable "URL" {
  default = "google.com"
}
output "URL" {
  value = var.URL # Accessing a variable. important Using double quotes in output's value Here terraform considers this as string ans prints as it ,instead of desired ones.
}