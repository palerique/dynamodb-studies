resource "aws_network_interface" "eni-00f0bea4aa41ff6fe" {
  subnet_id = "subnet-0f3e3ad8184af34f5"
  private_ips = [
  "192.168.0.143"]
  security_groups = [
  "sg-093fc32279d29b027"]
  source_dest_check = true
}

