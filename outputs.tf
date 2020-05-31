output "application_url" {
  value = "${aws_alb.main.dns_name}:${var.app_port}"
}
