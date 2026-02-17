resource "local_sensitive_file" "name" {
    filename = "users_${var.users[count.index]}.txt"
    content = var.content
    count = length(var.users)
}