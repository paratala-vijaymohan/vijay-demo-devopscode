#creating rsa based 4096 bits key pair
resource "tls_private_key" "example" {
  algorithm = var.private-key-algo
  rsa_bits  = var.key-size
}
//save private key
resource "local_file" "private-key-data" {
  content = tls_private_key.example.private_key_pem
  filename = "${path.module}/vijay-key.pem"
  file_permission = 0400
}

//sending public key to aws
resource "aws_key_pair" "example" {
    public_key = tls_private_key.example.public_key_openssh
    key_name = var.ec2-key-name
  
}