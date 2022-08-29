resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block                = var.DEFAULT_VPC_CIDR
    vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
  }

  tags = {
    Name = "${var.ENV}-route-table"
  }
}

rtb-043351e6418be34fc

resource "aws_route_table_association" "rt-assoc" {
  count          = length(aws_subnet.main.*.id)
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.route-table.id
}