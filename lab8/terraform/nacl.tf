resource "aws_network_acl" "acl-0293cff8433355f9f" {
  vpc_id = "vpc-024221ede169ff647"
  subnet_ids = [
  "subnet-0f3e3ad8184af34f5"]

  ingress {
    from_port  = 0
    to_port    = 0
    rule_no    = 100
    action     = "allow"
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  }

  egress {
    from_port  = 0
    to_port    = 0
    rule_no    = 100
    action     = "allow"
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  }
}

