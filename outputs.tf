output "endpoint" {
  description = "The connection endpoint in address:port format."
  value       = aws_db_instance.rds.endpoint
}

output "master_password" {
  description = "The random master password assigned to the database."
  sensitive   = true
  value       = random_string.master_password.result
}

output "security_group_id" {
  description = "The ID of the database security group."
  value       = aws_security_group.rds.id
}

