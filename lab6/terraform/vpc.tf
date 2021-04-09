resource "aws_vpc" "edx-ddb-vpc" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_hostnames = false
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags {
    Name = "edx-ddb-vpc"
  }
}

