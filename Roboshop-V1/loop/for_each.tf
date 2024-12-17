
# for_each map works map only
variable "fruits" {
  default = {
    apple = {}
    banana = {}
    custard_apple = {}
    kiwi = {}
  }
}
resource "null_resource" "fruits" {
  for_each = var.fruits
}