resource "aws_subnet" "main" {
  count      = length(var.SUBNET_CIDR)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.AZ)

  tags = {
    Name = "Main"
  }
}



#### The number of subnets to be created will be based on the numbers of SUBNET_CIDR's that we provide in the env.tfvars

# my logic to solve the above challene is 
# 1) Count the length of the variable and based on the length , run a loop.
# 2) How to run the loop then : In tf, we have something called as COUNT.

# Count, always works work with cound.index ( value of the particular iteration )
# count.index is the iteration number
# element retrieves a single element from a list