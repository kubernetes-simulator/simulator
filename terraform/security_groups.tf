resource "aws_security_group" "bastion-sg" {
  name   = "bastion-security-group"
  vpc_id = "${aws_vpc.securus_vpc.id}"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["${var.access_cidr}"]
  }

  egress {
    protocol    = -1
    from_port   = 0 
    to_port     = 0 
    cidr_blocks = ["0.0.0.0/0"]
  }
}

