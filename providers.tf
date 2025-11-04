resource "aws_instance" "example" {
    ami = "ami-0a25a306450a2cba3"
    instance_type = "t3.micro"
    key_name = "roche-key"
    tags_all = {
      "Name" = "vijay-vm-1"
    }
}
