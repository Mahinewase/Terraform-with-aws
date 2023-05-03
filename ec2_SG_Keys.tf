provider "aws" {
 region   = "ap-south-1"
 access_key = "________________"
 secret_key = "UPUm5A_____________lZkUwuDxUL"
}
resource "aws_instance" "webserver" {
 ami           = "ami-0cca134ec43cf708f"
 instance_type      = "t2.micro"
 key_name        = aws_key_pair.demokey.id
vpc_security_group_ids = [aws_security_group.ssh-access.id]
}
resource "aws_key_pair" "demokey" {
 key_name  = "demokey"
 public_key = file ("/Users/admin/Terraform/keys.pub")
}
resource "aws_security_group" "ssh-access" {
   name = "ssh-access"
   ingress {
   from_port    = 22
   to_port     = 22
   protocol     = "tcp"
   cidr_blocks   = ["0.0.0.0/0"]
 }
}
 output publicip{
  value = aws_instance.webserver.public_ip
}
