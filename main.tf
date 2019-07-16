resource "aws_subnet" "main" {
  count             = "${length(var.cidr_blocks)}"
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${element(var.cidr_blocks, count.index)}"
  availability_zone = "${var.zones[count.index % length(var.zones)]}"

  tags = "${
    merge(
      var.tags,
      map("Name", "${var.name}-${var.zones[count.index % length(var.zones)]}")
    )
  }"
}
