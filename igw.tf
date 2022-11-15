resource "aws_internet_gateway" "gw" {
  vpc_id = "vpc-054164bb3578ed991"

  tags = {
    Name = "main"
  }
}