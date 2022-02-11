data "local_file" "input" {
    filename = "${path.module}/input.txt"
}

locals {
  lines = split("\n", data.local_file.input.content)
  increases = [for i, l in local.lines : i == 0 ? false : tonumber(local.lines[i - 1]) < tonumber(l)]
  result = sum([for increased in local.increases : increased ? 1 : 0])
}