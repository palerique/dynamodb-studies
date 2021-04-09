resource "aws_cloudwatch_metric_alarm" "DDB-UserErrors" {
  alarm_name          = "DDB-UserErrors"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "UserErrors"
  namespace           = "AWS/DynamoDB"
  period              = "60"
  statistic           = "Sum"
  threshold           = "0.0"
  alarm_description   = "Alarm when UserErrors in DynamoDB exceeds 0"
  alarm_actions = [
  "arn:aws:sns:us-east-1:799098231639:edx-ddb-monitor"]
}
