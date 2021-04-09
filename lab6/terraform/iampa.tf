resource "aws_iam_policy_attachment" "AWSLambdaBasicExecutionRole-73ffd9f6-c801-48ff-ba85-4eafb9356623-policy-attachment" {
  name       = "AWSLambdaBasicExecutionRole-73ffd9f6-c801-48ff-ba85-4eafb9356623-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/service-role/AWSLambdaBasicExecutionRole-73ffd9f6-c801-48ff-ba85-4eafb9356623"
  groups     = []
  users      = []
  roles = [
  "HelloWorld"]
}

resource "aws_iam_policy_attachment" "AWSLambdaBasicExecutionRole-7845b452-baa8-4449-8a34-93e5af72c73b-policy-attachment" {
  name       = "AWSLambdaBasicExecutionRole-7845b452-baa8-4449-8a34-93e5af72c73b-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/service-role/AWSLambdaBasicExecutionRole-7845b452-baa8-4449-8a34-93e5af72c73b"
  groups     = []
  users      = []
  roles = [
  "cy-get-data-role-v8p6dy9j"]
}

resource "aws_iam_policy_attachment" "AWSLambdaBasicExecutionRole-c0a346b8-8a51-4f7d-970d-908fe9905713-policy-attachment" {
  name       = "AWSLambdaBasicExecutionRole-c0a346b8-8a51-4f7d-970d-908fe9905713-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/service-role/AWSLambdaBasicExecutionRole-c0a346b8-8a51-4f7d-970d-908fe9905713"
  groups     = []
  users      = []
  roles = [
  "compare-yourself-role"]
}

resource "aws_iam_policy_attachment" "AWSLambdaBasicExecutionRole-fd5cbaf0-dd5d-489f-be64-101086a56d89-policy-attachment" {
  name       = "AWSLambdaBasicExecutionRole-fd5cbaf0-dd5d-489f-be64-101086a56d89-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/service-role/AWSLambdaBasicExecutionRole-fd5cbaf0-dd5d-489f-be64-101086a56d89"
  groups     = []
  users      = []
  roles = [
  "faceAnalise-role-cflepiov"]
}

resource "aws_iam_policy_attachment" "edx-ddb-dragonsearch-policy-policy-attachment" {
  name       = "edx-ddb-dragonsearch-policy-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/edx-ddb-dragonsearch-policy"
  groups     = []
  users      = []
  roles = [
  "edx-ddb-dragonsearch-role"]
}

resource "aws_iam_policy_attachment" "terraform-20201017005018297500000002-policy-attachment" {
  name       = "terraform-20201017005018297500000002-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/terraform-20201017005018297500000002"
  groups     = []
  users      = []
  roles = [
  "terraform-20201017005018292700000001"]
}

resource "aws_iam_policy_attachment" "terraform-20201026110654542100000002-policy-attachment" {
  name       = "terraform-20201026110654542100000002-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/terraform-20201026110654542100000002"
  groups     = []
  users      = []
  roles = [
  "terraform-20201026110654540900000001"]
}

resource "aws_iam_policy_attachment" "terraform-20201103145454653200000002-policy-attachment" {
  name       = "terraform-20201103145454653200000002-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/terraform-20201103145454653200000002"
  groups     = []
  users      = []
  roles = [
  "terraform-20201103145454651200000001"]
}

resource "aws_iam_policy_attachment" "terraform-20201122132634604500000002-policy-attachment" {
  name       = "terraform-20201122132634604500000002-policy-attachment"
  policy_arn = "arn:aws:iam::799098231639:policy/terraform-20201122132634604500000002"
  groups     = []
  users      = []
  roles = [
  "terraform-20201122132634603300000001"]
}

resource "aws_iam_policy_attachment" "AWSXrayWriteOnlyAccess-policy-attachment" {
  name       = "AWSXrayWriteOnlyAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AWSXrayWriteOnlyAccess"
  groups     = []
  users      = []
  roles = [
    "login-for-dragons-role",
  "call-dynamodb-role"]
}

resource "aws_iam_policy_attachment" "AutoScalingServiceRolePolicy-policy-attachment" {
  name       = "AutoScalingServiceRolePolicy-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  groups     = []
  users      = []
  roles = [
  "AWSServiceRoleForAutoScaling"]
}

resource "aws_iam_policy_attachment" "AmazonS3FullAccess-policy-attachment" {
  name       = "AmazonS3FullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  groups     = []
  users      = []
  roles = [
    "call-dynamodb-role",
  "faceAnalise-role-cflepiov"]
}

resource "aws_iam_policy_attachment" "AWSElasticBeanstalkEnhancedHealth-policy-attachment" {
  name       = "AWSElasticBeanstalkEnhancedHealth-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"
  groups     = []
  users      = []
  roles = [
  "aws-elasticbeanstalk-service-role"]
}

resource "aws_iam_policy_attachment" "ReadOnlyAccess-policy-attachment" {
  name       = "ReadOnlyAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  groups     = []
  users = [
  "infviz-readonly"]
  roles = []
}

resource "aws_iam_policy_attachment" "AWSElasticLoadBalancingServiceRolePolicy-policy-attachment" {
  name       = "AWSElasticLoadBalancingServiceRolePolicy-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  groups     = []
  users      = []
  roles = [
  "AWSServiceRoleForElasticLoadBalancing"]
}

resource "aws_iam_policy_attachment" "ElastiCacheServiceRolePolicy-policy-attachment" {
  name       = "ElastiCacheServiceRolePolicy-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"
  groups     = []
  users      = []
  roles = [
  "AWSServiceRoleForElastiCache"]
}

resource "aws_iam_policy_attachment" "AmazonDynamoDBFullAccess-policy-attachment" {
  name       = "AmazonDynamoDBFullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  groups     = []
  users      = []
  roles = [
    "login-for-dragons-role",
  "call-dynamodb-role"]
}

resource "aws_iam_policy_attachment" "AmazonRDSServiceRolePolicy-policy-attachment" {
  name       = "AmazonRDSServiceRolePolicy-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  groups     = []
  users      = []
  roles = [
  "AWSServiceRoleForRDS"]
}

resource "aws_iam_policy_attachment" "AWSElasticBeanstalkWebTier-policy-attachment" {
  name       = "AWSElasticBeanstalkWebTier-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"
  groups     = []
  users      = []
  roles = [
  "aws-elasticbeanstalk-ec2-role"]
}

resource "aws_iam_policy_attachment" "AmazonRekognitionFullAccess-policy-attachment" {
  name       = "AmazonRekognitionFullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRekognitionFullAccess"
  groups     = []
  users      = []
  roles = [
  "faceAnalise-role-cflepiov"]
}

resource "aws_iam_policy_attachment" "AdministratorAccess-policy-attachment" {
  name       = "AdministratorAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  groups = [
  "admin"]
  users = []
  roles = []
}

resource "aws_iam_policy_attachment" "AWSElasticBeanstalkMulticontainerDocker-policy-attachment" {
  name       = "AWSElasticBeanstalkMulticontainerDocker-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker"
  groups     = []
  users      = []
  roles = [
  "aws-elasticbeanstalk-ec2-role"]
}

resource "aws_iam_policy_attachment" "AWSSupportServiceRolePolicy-policy-attachment" {
  name       = "AWSSupportServiceRolePolicy-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  groups     = []
  users      = []
  roles = [
  "AWSServiceRoleForSupport"]
}

resource "aws_iam_policy_attachment" "AWSCloud9ServiceRolePolicy-policy-attachment" {
  name       = "AWSCloud9ServiceRolePolicy-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSCloud9ServiceRolePolicy"
  groups     = []
  users      = []
  roles = [
  "AWSServiceRoleForAWSCloud9"]
}

resource "aws_iam_policy_attachment" "AWSTrustedAdvisorServiceRolePolicy-policy-attachment" {
  name       = "AWSTrustedAdvisorServiceRolePolicy-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  groups     = []
  users      = []
  roles = [
  "AWSServiceRoleForTrustedAdvisor"]
}

resource "aws_iam_policy_attachment" "AWSElasticBeanstalkService-policy-attachment" {
  name       = "AWSElasticBeanstalkService-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkService"
  groups     = []
  users      = []
  roles = [
  "aws-elasticbeanstalk-service-role"]
}

resource "aws_iam_policy_attachment" "AWSLambdaBasicExecutionRole-policy-attachment" {
  name       = "AWSLambdaBasicExecutionRole-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  groups     = []
  users      = []
  roles = [
    "login-for-dragons-role",
  "call-dynamodb-role"]
}

resource "aws_iam_policy_attachment" "AWSElasticBeanstalkWorkerTier-policy-attachment" {
  name       = "AWSElasticBeanstalkWorkerTier-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier"
  groups     = []
  users      = []
  roles = [
  "aws-elasticbeanstalk-ec2-role"]
}

resource "aws_iam_policy_attachment" "APIGatewayServiceRolePolicy-policy-attachment" {
  name       = "APIGatewayServiceRolePolicy-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  groups     = []
  users      = []
  roles = [
  "AWSServiceRoleForAPIGateway"]
}

resource "aws_iam_policy_attachment" "AWSLambdaVPCAccessExecutionRole-policy-attachment" {
  name       = "AWSLambdaVPCAccessExecutionRole-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  groups     = []
  users      = []
  roles = [
  "edx-ddb-dragonsearch-role"]
}

