resource "local_file" "students" {
  content  = "Alice\nBob\nCharlie"
  filename = "students.txt"
  file_permission = "0644"

  lifecycle {
    create_before_destroy = true
  }
}