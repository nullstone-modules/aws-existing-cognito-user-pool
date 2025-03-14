resource "aws_secretsmanager_secret" "access_key_id" {
  count = var.access_key_id != "" ? 1 : 0

  name                    = "${local.resource_name}/access_key_id"
  tags                    = local.tags
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "access_key_id" {
  count = var.access_key_id != "" ? 1 : 0

  secret_id     = aws_secretsmanager_secret.access_key_id[count.index].id
  secret_string = var.access_key_id
}

resource "aws_secretsmanager_secret" "secret_access_key" {
  count = var.secret_access_key != "" ? 1 : 0

  name                    = "${local.resource_name}/secret_access_key"
  tags                    = local.tags
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "secret_access_key" {
  count = var.secret_access_key != "" ? 1 : 0

  secret_id     = aws_secretsmanager_secret.secret_access_key[count.index].id
  secret_string = var.secret_access_key
}
