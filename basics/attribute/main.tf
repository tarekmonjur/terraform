resource "local_file" "pets" {
  filename = var.filename
  content  = "${var.content} ${random_pet.my_pet.id}"
}

resource "random_pet" "my_pet" {
  length    = var.length
  separator = var.separator
  prefix = var.prefix
}