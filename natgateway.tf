resource "aws_nat_gateway" "NATGW" {
  allocation_id = "eipalloc-0d49----68adc"
  subnet_id     = "subnet-00c8----------91e"

  tags = {
    Name = "NATGW"
  }
}
