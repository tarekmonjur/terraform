variable "users" {
    type = list(string)
    default = [ "user10", "user11", "user12", "user10"]
}
variable "content" {
    default = "password: S3cr3tP@ssw0rd"
  
}