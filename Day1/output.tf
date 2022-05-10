output "day_one_part_one_result" {
  description = <<EOF
    Numbwe of times the value increased comparing to the previous value,
    more details: https://adventofcode.com/2021/day/1
  EOF
  value       = local.result
}

output "day_one_part_two_result" {
  description = <<EOF
    Numbwe of times the value increased considering sums of a three-measurement sliding window,
    more details: https://adventofcode.com/2021/day/1
  EOF
  value       = local.result_part_two
}
