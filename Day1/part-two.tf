
locals {
  increases_part_two = [
    for i, l in local.lines : i == 0 || i == 1 || i == 2 ?
    false : tonumber(local.lines[i - 1]) + tonumber(local.lines[i - 2]) + tonumber(local.lines[i - 3]) <
  tonumber(local.lines[i]) + tonumber(local.lines[i - 1]) + tonumber(local.lines[i - 2])]
  result_part_two = sum([for increased in local.increases_part_two : increased ? 1 : 0])
}
