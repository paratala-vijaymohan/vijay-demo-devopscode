resource "aws_instance" "example" {
  #ami = "ami-0a25a306450a2cba3"
  ami =var.vijaymiid
  instance_type = var.vm-size
  key_name = var.ec2-key-size
  tags = {
    "name"= var.vm-name
  }
}