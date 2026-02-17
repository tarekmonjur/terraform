resource "local_file" "pet" {
  filename = "pets.txt"
  content = "We love pets"
  file_permission = "0770"
}

resource "random_pet" "my_pet" {
  prefix = "Mrs"
  separator = "."
  length = 2
}