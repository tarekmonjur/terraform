resource "local_sensitive_file" "name" {
    filename = each.value
    content = var.content
    for_each = toset(var.users)
}