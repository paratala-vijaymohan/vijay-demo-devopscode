resource "aws_instance" "example" {
  #ami = "ami-0a25a306450a2cba3"
  ami =var.vijaymiid
  instance_type = var.vm-size
  #key_name = var.ec2-key-size
  key_name = aws_key_pair.example.key_name
  tags = {
    "name"= var.vm-name
  }

  provisioner "remote-exec" {
    inline = [ 
      "sudo dnf install git httpd -y",
      "mkdir -p hello/terraform"
     ]
  }
  connection {
    type = "ssh"
    user = "ec2-user"
    host = self.public_ip
    timeout = "2m"
    private_key = tls_private_key.example.private_key_pem
  }
}