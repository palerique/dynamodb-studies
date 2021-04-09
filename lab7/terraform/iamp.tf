resource "aws_iam_policy" "edx-ddb-dragonsearch-policy" {
  name        = "edx-ddb-dragonsearch-policy"
  path        = "/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "VisualEditor0",
      "Effect": "Allow",
      "Action": [
        "dynamodb:Scan",
        "dynamodb:Query"
      ],
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799098231639:table/dragon_stats"
      ],
      "Condition": {
        "ForAllValues:StringEquals": {
          "dynamodb:Attributes": [
            "dragon_name",
            "family",
            "protection",
            "damage",
            "description"
          ]
        }
      }
    },
    {
      "Sid": "VisualEditor1",
      "Effect": "Allow",
      "Action": [
        "dynamodb:Query"
      ],
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799098231639:table/sessions"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-73ffd9f6-c801-48ff-ba85-4eafb9356623" {
  name        = "AWSLambdaBasicExecutionRole-73ffd9f6-c801-48ff-ba85-4eafb9356623"
  path        = "/service-role/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:us-east-1:799098231639:*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:us-east-1:799098231639:log-group:/aws/lambda/HelloWorld:*"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "terraform-20201017005018297500000002" {
  name        = "terraform-20201017005018297500000002"
  path        = "/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowSQSPermissions",
      "Effect": "Allow",
      "Action": [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
        "sqs:GetQueueAttributes",
        "sqs:DeleteMessage",
        "sqs:ChangeMessageVisibility"
      ],
      "Resource": "arn:aws:sqs:*"
    },
    {
      "Sid": "AllowInvokingLambdas",
      "Effect": "Allow",
      "Action": "lambda:InvokeFunction",
      "Resource": "arn:aws:lambda:us-east-1:*:function:*"
    },
    {
      "Sid": "AllowCreatingLogGroups",
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:us-east-1:*:*"
    },
    {
      "Sid": "AllowWritingLogs",
      "Effect": "Allow",
      "Action": [
        "logs:PutLogEvents",
        "logs:CreateLogStream"
      ],
      "Resource": "arn:aws:logs:us-east-1:*:log-group:/aws/lambda/*:*"
    },
    {
      "Sid": "AllowUsingComprehend",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "iam:ListRoles",
        "iam:GetRole",
        "comprehend:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowUsingS3",
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    },
    {
      "Sid": "AllowIAMPassRole",
      "Effect": "Allow",
      "Action": [
        "organizations:ListTargetsForPolicy",
        "organizations:ListRoots",
        "organizations:ListPoliciesForTarget",
        "organizations:ListPolicies",
        "organizations:ListParents",
        "organizations:ListChildren",
        "organizations:DescribePolicy",
        "organizations:DescribeOrganizationalUnit",
        "organizations:DescribeOrganization",
        "organizations:DescribeAccount",
        "iam:PassRole",
        "iam:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowAllComprehendActions",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "kms:GenerateDatakey",
        "kms:Decrypt",
        "kms:CreateGrant",
        "iam:PassRole",
        "iam:ListRoles",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:CreatePolicy",
        "iam:AttachRolePolicy",
        "comprehend:*"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-7845b452-baa8-4449-8a34-93e5af72c73b" {
  name        = "AWSLambdaBasicExecutionRole-7845b452-baa8-4449-8a34-93e5af72c73b"
  path        = "/service-role/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:us-east-1:799098231639:*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:us-east-1:799098231639:log-group:/aws/lambda/cy-get-data:*"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "terraform-20201122132634604500000002" {
  name        = "terraform-20201122132634604500000002"
  path        = "/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowSQSPermissions",
      "Effect": "Allow",
      "Action": [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
        "sqs:GetQueueAttributes",
        "sqs:DeleteMessage",
        "sqs:ChangeMessageVisibility"
      ],
      "Resource": "arn:aws:sqs:*"
    },
    {
      "Sid": "AllowInvokingLambdas",
      "Effect": "Allow",
      "Action": "lambda:InvokeFunction",
      "Resource": "arn:aws:lambda:us-east-1:*:function:*"
    },
    {
      "Sid": "AllowCreatingLogGroups",
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:us-east-1:*:*"
    },
    {
      "Sid": "AllowWritingLogs",
      "Effect": "Allow",
      "Action": [
        "logs:PutLogEvents",
        "logs:CreateLogStream"
      ],
      "Resource": "arn:aws:logs:us-east-1:*:log-group:/aws/lambda/*:*"
    },
    {
      "Sid": "AllowUsingComprehend",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "iam:ListRoles",
        "iam:GetRole",
        "comprehend:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowUsingS3",
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    },
    {
      "Sid": "AllowIAMPassRole",
      "Effect": "Allow",
      "Action": [
        "organizations:ListTargetsForPolicy",
        "organizations:ListRoots",
        "organizations:ListPoliciesForTarget",
        "organizations:ListPolicies",
        "organizations:ListParents",
        "organizations:ListChildren",
        "organizations:DescribePolicy",
        "organizations:DescribeOrganizationalUnit",
        "organizations:DescribeOrganization",
        "organizations:DescribeAccount",
        "iam:PassRole",
        "iam:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowAllComprehendActions",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "kms:GenerateDatakey",
        "kms:Decrypt",
        "kms:CreateGrant",
        "iam:PassRole",
        "iam:ListRoles",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:CreatePolicy",
        "iam:AttachRolePolicy",
        "comprehend:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowToUseSecretManager",
      "Effect": "Allow",
      "Action": "secretsmanager:*",
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-fd5cbaf0-dd5d-489f-be64-101086a56d89" {
  name        = "AWSLambdaBasicExecutionRole-fd5cbaf0-dd5d-489f-be64-101086a56d89"
  path        = "/service-role/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:us-east-1:799098231639:*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:us-east-1:799098231639:log-group:/aws/lambda/faceAnalise:*"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-c0a346b8-8a51-4f7d-970d-908fe9905713" {
  name        = "AWSLambdaBasicExecutionRole-c0a346b8-8a51-4f7d-970d-908fe9905713"
  path        = "/service-role/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:us-east-1:799098231639:*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": [
        "arn:aws:logs:us-east-1:799098231639:log-group:/aws/lambda/compare-yourself-lambda-function:*"
      ]
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "terraform-20201026110654542100000002" {
  name        = "terraform-20201026110654542100000002"
  path        = "/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowSQSPermissions",
      "Effect": "Allow",
      "Action": [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
        "sqs:GetQueueAttributes",
        "sqs:DeleteMessage",
        "sqs:ChangeMessageVisibility"
      ],
      "Resource": "arn:aws:sqs:*"
    },
    {
      "Sid": "AllowInvokingLambdas",
      "Effect": "Allow",
      "Action": "lambda:InvokeFunction",
      "Resource": "arn:aws:lambda:us-east-1:*:function:*"
    },
    {
      "Sid": "AllowCreatingLogGroups",
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:us-east-1:*:*"
    },
    {
      "Sid": "AllowWritingLogs",
      "Effect": "Allow",
      "Action": [
        "logs:PutLogEvents",
        "logs:CreateLogStream"
      ],
      "Resource": "arn:aws:logs:us-east-1:*:log-group:/aws/lambda/*:*"
    },
    {
      "Sid": "AllowUsingComprehend",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "iam:ListRoles",
        "iam:GetRole",
        "comprehend:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowUsingS3",
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    },
    {
      "Sid": "AllowIAMPassRole",
      "Effect": "Allow",
      "Action": [
        "organizations:ListTargetsForPolicy",
        "organizations:ListRoots",
        "organizations:ListPoliciesForTarget",
        "organizations:ListPolicies",
        "organizations:ListParents",
        "organizations:ListChildren",
        "organizations:DescribePolicy",
        "organizations:DescribeOrganizationalUnit",
        "organizations:DescribeOrganization",
        "organizations:DescribeAccount",
        "iam:PassRole",
        "iam:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowAllComprehendActions",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "kms:GenerateDatakey",
        "kms:Decrypt",
        "kms:CreateGrant",
        "iam:PassRole",
        "iam:ListRoles",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:CreatePolicy",
        "iam:AttachRolePolicy",
        "comprehend:*"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "terraform-20201103145454653200000002" {
  name        = "terraform-20201103145454653200000002"
  path        = "/"
  description = ""
  policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowSQSPermissions",
      "Effect": "Allow",
      "Action": [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
        "sqs:GetQueueAttributes",
        "sqs:DeleteMessage",
        "sqs:ChangeMessageVisibility"
      ],
      "Resource": "arn:aws:sqs:*"
    },
    {
      "Sid": "AllowInvokingLambdas",
      "Effect": "Allow",
      "Action": "lambda:InvokeFunction",
      "Resource": "arn:aws:lambda:us-east-1:*:function:*"
    },
    {
      "Sid": "AllowCreatingLogGroups",
      "Effect": "Allow",
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:us-east-1:*:*"
    },
    {
      "Sid": "AllowWritingLogs",
      "Effect": "Allow",
      "Action": [
        "logs:PutLogEvents",
        "logs:CreateLogStream"
      ],
      "Resource": "arn:aws:logs:us-east-1:*:log-group:/aws/lambda/*:*"
    },
    {
      "Sid": "AllowUsingComprehend",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "iam:ListRoles",
        "iam:GetRole",
        "comprehend:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowUsingS3",
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    },
    {
      "Sid": "AllowIAMPassRole",
      "Effect": "Allow",
      "Action": [
        "organizations:ListTargetsForPolicy",
        "organizations:ListRoots",
        "organizations:ListPoliciesForTarget",
        "organizations:ListPolicies",
        "organizations:ListParents",
        "organizations:ListChildren",
        "organizations:DescribePolicy",
        "organizations:DescribeOrganizationalUnit",
        "organizations:DescribeOrganization",
        "organizations:DescribeAccount",
        "iam:PassRole",
        "iam:*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "AllowAllComprehendActions",
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation",
        "kms:GenerateDatakey",
        "kms:Decrypt",
        "kms:CreateGrant",
        "iam:PassRole",
        "iam:ListRoles",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:CreatePolicy",
        "iam:AttachRolePolicy",
        "comprehend:*"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
}

