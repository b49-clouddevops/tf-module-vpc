resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = ????????

  tags = {
    Name = "Main"
  }
}



#### The number of subnets to be created will be based on the numbers of SUBNET_CIDR's that we provide in the env.tfvars

# my logic to solve the above challene is 
# 1) Count the length of the variable and based on the length , run a loop.
# 2) How to run the loop then : In tf, we have something called as COUNT.