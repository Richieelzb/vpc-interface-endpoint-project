/////////////////VPC 1 SG/////////////////

resource "aws_security_group" "private-sg-vpc1" {
  name        = "allow-pvt-sg-1"
  description = "allow-pvt-sg-1"
  vpc_id      = module.vpc1.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

//////////////////VPC 2 SG /////////////////

resource "aws_security_group" "private-sg-vpc2" {
  name        = "allow-pvt-sg-2"
  description = "allow-pvt-sg-2"
  vpc_id      = module.vpc2.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}