resource "aws_route_table" "rt-1" {
  vpc_id = "vpc-054-----78ed991"

  route = []

  tags = {
    Name = "rt-1"
  }
}
