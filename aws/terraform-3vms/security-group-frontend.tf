resource "aws_security_group" "frontend" {
  name = "default-security-group"
  description = "Frontend Security Group"
  vpc_id = "${aws_vpc.default.id}"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port = 4200
    to_port = 4200
    protocol = "TCP"
    cidr_blocks = ["${aws_subnet.default.cidr_block}"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}