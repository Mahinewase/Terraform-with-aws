resource "aws_internet_gateway" "gw" {
  vpc_id = "vpc-0------91"

  tags = {
    Name = "main"
  }
}
