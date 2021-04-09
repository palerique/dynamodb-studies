resource "aws_sns_topic" "dynamodb" {
  name         = "dynamodb"
  display_name = ""
  policy       = <<POLICY
{
  "Version": "2008-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__default_statement_ID",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Resource": "arn:aws:sns:us-east-1:799098231639:dynamodb",
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "799098231639"
        }
      }
    }
  ]
}
POLICY
}

resource "aws_sns_topic" "edx-ddb-monitor" {
  name         = "edx-ddb-monitor"
  display_name = ""
  policy       = <<POLICY
{
  "Version": "2008-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__default_statement_ID",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Resource": "arn:aws:sns:us-east-1:799098231639:edx-ddb-monitor",
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "799098231639"
        }
      }
    }
  ]
}
POLICY
}

