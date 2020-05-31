# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "pc_log_group" {
  name              = "/ecs/pc-app"
  retention_in_days = 30

  tags = {
    Name = "pc-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "pc_log_stream" {
  name           = "pc-log-stream"
  log_group_name = aws_cloudwatch_log_group.pc_log_group.name
}
