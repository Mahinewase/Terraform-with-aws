#Create a Public Subnets.
 resource "aws_subnet" "publicsubnets" {   #Creating Public Subnets
   vpc_id =  "aws_vpc.Main.id"
   cidr_block = "${var.public_subnets}"   #CIDR block of public subnets
 }
 #Create a Private Subnet                   #Creating Private Subnets
 resource "aws_subnet" "privatesubnets" {
   vpc_id =  "aws_vpc.Main.id"
   cidr_block = "${var.private_subnets}"  #CIDR block of private subnets
 }
