resource "aws_secretsmanager_secret" "client_secret" {
  name = "${local.resource_name}/client_secret"
  tags = local.tags
}

resource "aws_secretsmanager_secret_version" "client_secret" {
  secret_id     = aws_secretsmanager_secret.client_secret.id
  secret_string = var.client_secret
}
