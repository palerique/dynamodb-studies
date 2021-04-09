resource "aws_subnet" "subnet-0f3e3ad8184af34f5-edx-ddb-private-subnet" {
  vpc_id                  = "vpc-024221ede169ff647"
  cidr_block              = "192.168.0.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags {
    Name = "edx-ddb-private-subnet"
  }
}

