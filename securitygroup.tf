provider "aws" {

}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow Http inbound traffic"
  vpc_id      = "vpc-2880634e"

  ingress {
    description = "Http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["116.88.0.33/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}
