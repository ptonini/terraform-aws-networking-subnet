resource "aws_subnet" "this" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags                    = merge({ Name = var.name }, var.tags)
}

resource "aws_route_table_association" "this" {
  for_each       = var.route_table_ids
  subnet_id      = aws_subnet.this.id
  route_table_id = each.value
}