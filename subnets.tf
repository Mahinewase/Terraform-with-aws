resource "aws_subnet" "publicsubnets" {    # Creating Public Subnets
   vpc_id =  "vpc-054164bb3578ed991"
   cidr_block =  "10.0.0.0/24"       # CIDR block of public subnets
}
resource "aws_subnet" "privatesubnets" {
   vpc_id =  "vpc-054164bb3578ed991"
   cidr_block = "10.0.0.0/24"          # CIDR block of private subnets
}
