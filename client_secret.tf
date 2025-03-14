resource "aws_secretsmanager_secret" "client_secret" {
  count = var.client_secret != "" ? 1 : 0

  name                    = "${local.resource_name}/client_secret"
  tags                    = local.tags
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "client_secret" {
  count = var.client_secret != "" ? 1 : 0

  secret_id     = aws_secretsmanager_secret.client_secret[count.index].id
  secret_string = var.client_secret
}
