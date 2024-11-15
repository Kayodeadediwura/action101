resource "aws_instance" "node_1" {
  ami           = "ami-02f617729751b375a"
  instance_type = "t2.micro"
  key_name      = "kokoro101"



  tags = {
    Name = "node_1"
  }
}

resource "aws_security_group" "project" {
  name   = "project"
  vpc_id = "vpc-00de41b8a9cb1e85d"
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

