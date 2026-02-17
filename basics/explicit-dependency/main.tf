resource "local_file" "whale" {
  filename   = "whale"
  content    = "whale"
  depends_on = [local_file.krill]
}

resource "local_file" "krill" {
  filename = "krill"
  content  = "krill"
}