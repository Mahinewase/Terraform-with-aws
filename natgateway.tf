resource "aws_nat_gateway" "NATGW" {
  allocation_id = "eipalloc-0d49a109553468adc"
  subnet_id     = "subnet-00c867f1c58b8291e"

  tags = {
    Name = "NATGW"
  }
}