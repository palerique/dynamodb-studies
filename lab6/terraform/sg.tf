resource "aws_security_group" "default" {
  name        = "default"
  description = "default group"
  vpc_id      = ""

  ingress {
    from_port       = 0
    to_port         = 65535
    protocol        = "udp"
    security_groups = []
    self            = true
  }

  ingress {
    from_port       = -1
    to_port         = -1
    protocol        = "icmp"
    security_groups = []
    self            = true
  }

  ingress {
    from_port       = 0
    to_port         = 65535
    protocol        = "tcp"
    security_groups = []
    self            = true
  }


}

resource "aws_security_group" "vpc-024221ede169ff647-edx-ddb-lambda-sg" {
  name        = "edx-ddb-lambda-sg"
  description = "Lambda Security Group"
  vpc_id      = "vpc-024221ede169ff647"


  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
    "0.0.0.0/0"]
  }

}

resource "aws_security_group" "vpc-024221ede169ff647-default" {
  name        = "default"
  description = "default VPC security group"
  vpc_id      = "vpc-024221ede169ff647"

  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = []
    self            = true
  }


  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
    "0.0.0.0/0"]
  }

}

