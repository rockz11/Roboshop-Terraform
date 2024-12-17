variable "URL" {
  default = "WWW.google.com"
}
output "URL" {
  value = "var.URL" # Accessing a variable.
}