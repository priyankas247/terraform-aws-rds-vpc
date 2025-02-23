#Outputs
output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.postgres_rds.endpoint
  sensitive = true  # Prevents showing it in logs
}
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main_vpc.id
}

output "web_server_ip" {
  description = "Public IP of the web server"
  value       = aws_instance.web.public_ip
}

output "rds_endpoint" {
  description = "RDS Endpoint"
  value       = aws_db_instance.postgres_rds.endpoint
  sensitive   = true
}
