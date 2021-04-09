resource "aws_s3_bucket" "paulo-lerbach" {
  bucket = "paulo-lerbach"
  acl    = "private"
  policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::paulo-lerbach/*",
      "Condition": {
        "IpAddress": {
          "aws:SourceIp": "177.235.84.21/32"
        }
      }
    }
  ]
}
POLICY
}

