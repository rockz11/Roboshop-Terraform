variable "URL" {
  default = "google.com"
}
output "URL" {
  value = "var.URL" # Accessing a variable.
}