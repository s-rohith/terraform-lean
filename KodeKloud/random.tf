resource "random_pet" "my-pet" {
  length    = "2"
  prefix    = "Jr."
  separator = " "
}

resource "random_string" "name" {
  length           = "16"
  upper            = true
  lower            = true
  numeric          = true
  special          = true
  override_special = "/@£$"
}
