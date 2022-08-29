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

resource "aws_route_table_association" "rt-assoc" {
  count          = length(aws_subnet.main.*.id)
  subnet_id      = element(aws_subnet.main.*.id, count.index)
  route_table_id = aws_route_table.route-table.id
}


resource "aws_route" "r" {
  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.1.0/22"
  vpc_peering_connection_id = "pcx-45ff3dc1"
  depends_on                = [aws_route_table.testing]
}