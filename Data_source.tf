
provider "aws" {
   region     = "eu-central-1"
   access_key = "Access_key"
   secret_key = "secret_key"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-0767046d1677be5a0"
   instance_type =  "t2.micro"

   tags = {
           Name = "Terraform EC2"
   }
}
#This is data block, it refers to data sources.
data "aws_instance" "myawsinstance" {
    filter {
      name = "tag:Name"
      values = ["Terraform EC2"]
    }

    depends_on = [
      aws_instance.ec2_example
    ]
}
#output block refers to info which ypu will get it back from aws environment. 
#and which you want to print in your console.
output "fetched_info_from_aws" {
  value = data.aws_instance.myawsinstance.public_ip
}
