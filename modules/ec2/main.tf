resource "aws_instance" "my_first_instance" {
  ami                = "ami-0bb6af715826253bf"
  instance_type      = "t2.micro"
  vpc_security_group_ids = [var.SG_ID]
  tags               = {
    Name             = "my_first_instance"
  }
}

variable "SG_ID"{}