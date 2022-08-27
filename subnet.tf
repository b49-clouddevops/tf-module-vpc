resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = ????????

  tags = {
    Name = "Main"
  }
}



#### The number of subnets to be created will be based on the numbers of SUBNET_CIDR's that we provide in the env.tfvars