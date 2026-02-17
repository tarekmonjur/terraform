variable "filename" {
  type = string
  description = "the path of local file"
}

variable "content" {
  type = string
  description = "the content to be written to the file"
}

variable "prefix" {
  default = "Mrs"
}

variable "separator" {
  default = "."
}

variable "length" {
  default = 2
}