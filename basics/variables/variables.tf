variable "filename" {
  default = "pets.txt"
  type = string
  description = "the path of local file"
}

variable "content" {
  default = "we love pets"
  type = string
  description = "the content to be written to the file"
}

variable "prefix" {
  default = "Mrs"
}

variable "length" {
  default = 2
}

variable "separator" {
  default = "-"
}