variable "vijaymiid" {
    type = string
    description = "this is my sydney aws region id"
    #default ="ami-0a25a306450a2cba3"

  
}

variable "vm-size" {
  type = string
}

variable "vm-name" {
  type = string

}

# variable "ec2-key-size" {
#   type = number
# }

variable "private-key-algo" {
  type = string
}
variable "ec2-key-name" {
  type = string
}
variable "key-size" {
  type = number
}
variable "my-vpc-id" {

}

variable "my-sec-group-name" {
  
}
variable "novm" {
  
}