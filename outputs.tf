output "web_instance_id" {
  value = aws_instance.web_server.id
}

output "db_instance_endpoint" {
  value = aws_db_instance.db.endpoint
}