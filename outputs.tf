output "subnet_ids" {
  value       = "${aws_subnet.main.*.id}"
  description = "List of created subnet ids."
}

output "subnet_cidr" {
  value = "${aws_subnet.main.*.cidr_block}"
  description = "List of created subnet cidr block."
}

output "subnet_az" {
  value = "${aws_subnet.main.*.availability_zone}"
}


