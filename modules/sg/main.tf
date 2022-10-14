resource "aws_security_group" "my_sg" {
  name               = "Allow_everyone"
  description        = "Allow_everyone"
  vpc_id             = "vpc-0339245704e9d28ab"

  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [0.0.0.0/0]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags               = {
    Name             = "Allow_everyone"
  }
}

output "sg_id" {
  value = aws_security_group.my_sg.id
}