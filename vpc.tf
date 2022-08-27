resource "aws_vpc" "main" {
  cidr_block           = var.VPC_CIDR
  enable_dns_hostnames = true
  auto_accept          = true

  tags = {
    Name = "${var.ENV}-vpc"
  }
}