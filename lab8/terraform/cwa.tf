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

resource "aws_cloudwatch_metric_alarm" "Music-ReadCapacityUnitsLimit-BasicAlarm" {
  alarm_name          = "Music-ReadCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "ConsumedReadCapacityUnits"
  namespace           = "AWS/DynamoDB"
  period              = "60"
  statistic           = "Sum"
  threshold           = "240.0"
  alarm_description   = ""
  alarm_actions = [
  "arn:aws:sns:us-east-1:799098231639:dynamodb"]
  //  dimensions {
  //    TableName = "Music"
  //  }
}

resource "aws_cloudwatch_metric_alarm" "Music-WriteCapacityUnitsLimit-BasicAlarm" {
  alarm_name          = "Music-WriteCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "ConsumedWriteCapacityUnits"
  namespace           = "AWS/DynamoDB"
  period              = "60"
  statistic           = "Sum"
  threshold           = "240.0"
  alarm_description   = ""
  alarm_actions = [
  "arn:aws:sns:us-east-1:799098231639:dynamodb"]
  //  dimensions {
  //    TableName = "Music"
  //  }
}

resource "aws_cloudwatch_metric_alarm" "jia-test-dead-letter-queue-not-empty-alarm" {
  alarm_name          = "jia-test-dead-letter-queue-not-empty-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "ApproximateNumberOfMessagesVisible"
  namespace           = "AWS/SQS"
  period              = "300"
  statistic           = "Average"
  threshold           = "1.0"
  alarm_description   = "Items are on the jia-test-dead-letter-queue queue"
  //  dimensions {
  //    QueueName = "jia-test-dead-letter-queue"
  //  }
}

