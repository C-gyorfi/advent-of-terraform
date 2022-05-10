data "local_file" "input" {
  filename = "${path.module}/input.txt"
}

locals {
  lines = split("\n", data.local_file.input.content)
}
