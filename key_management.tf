# resource "aws_kms_key" "db_key" {
#   description             = "KMS key for encrypting DB credentials"
#   deletion_window_in_days = 8

#   tags = {
#     Name = "db-key-1"
#   }
# }

# resource "aws_secretsmanager_secret" "db_credentials" {
#   name = "db_credentials_healthy"
#   kms_key_id = aws_kms_key.db_key.arn
# }

# resource "aws_secretsmanager_secret_version" "db_credentials_version" {
#   secret_id     = aws_secretsmanager_secret.db_credentials.id
#   secret_string = jsonencode({
#     username = var.db_username,
#     password = var.db_password
#   })
# }
