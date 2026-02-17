resource "local_file" "pets" {
  filename = var.filename
  content  = var.content
}

resource "random_pet" "my_pet" {
  length    = var.length
  separator = var.separator
  prefix = var.prefix
}