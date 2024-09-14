data "aws_ami" "health_ami" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = ["health-ami"]
  }
}

# data "aws_secretsmanager_secret" "db_credentials" {
#   name = aws_secretsmanager_secret.db_credentials.name
# }

# data "aws_secretsmanager_secret_version" "db_credentials_version" {
#   secret_id = data.aws_secretsmanager_secret.db_credentials.id
# }