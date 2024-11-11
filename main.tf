resource "aws_security_group" "project" {


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
  ingress {
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}


resource "aws_instance" "node_1" {
  ami                    = var.node_1_ami
  instance_type          = var.node_1_instance_type
  key_name               = var.node_1_key_name
  subnet_id              = var.node_1_subnet_id
  vpc_security_group_ids = [aws_security_group.project.id]

  tags = {
    Name = "node_1"
  }
}

