output "instance_public_ip" {
  description = "Public IP of application EC2"
  value       = aws_instance.app.public_ip
}

output "application_url" {
  description = "Application URL"
  value       = "http://${aws_instance.app.public_ip}"
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}