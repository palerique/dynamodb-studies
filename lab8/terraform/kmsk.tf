resource "aws_kms_key" "9448176f-337d-43ef-a75b-918844579fda" {
  description         = "Default master key that protects my RDS database volumes when no other key is defined"
  key_usage           = "ENCRYPT_DECRYPT"
  is_enabled          = true
  enable_key_rotation = true

  policy = <<POLICY
{
  "Version" : "2012-10-17",
  "Id" : "auto-rds-2",
  "Statement" : [ {
    "Sid" : "Allow access through RDS for all principals in the account that are authorized to use RDS",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "*"
    },
    "Action" : [ "kms:Encrypt", "kms:Decrypt", "kms:ReEncrypt*", "kms:GenerateDataKey*", "kms:CreateGrant", "kms:ListGrants", "kms:DescribeKey" ],
    "Resource" : "*",
    "Condition" : {
      "StringEquals" : {
        "kms:ViaService" : "rds.us-east-1.amazonaws.com",
        "kms:CallerAccount" : "799098231639"
      }
    }
  }, {
    "Sid" : "Allow direct access to key metadata to the account",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::799098231639:root"
    },
    "Action" : [ "kms:Describe*", "kms:Get*", "kms:List*", "kms:RevokeGrant" ],
    "Resource" : "*"
  } ]
}
POLICY
}

