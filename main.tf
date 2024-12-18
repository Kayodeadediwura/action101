resource "aws_instance" "node_101" {
  ami           = "ami-0fcc0bef51bad3cb2"
  instance_type = "t2.micro"
  key_name      = "kokoro101"

  security_groups = [aws_security_group.project101.name]

  tags = {
    Name = "node_101"
  }
}

resource "aws_security_group" "project101" {
  name   = "project101"
  vpc_id = "vpc-054a1439864bf9be6"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

