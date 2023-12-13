resource "aws_secretsmanager_secret" "access_key_id" {
  name = "${local.resource_name}/access_key_id"
  tags = local.tags
}

resource "aws_secretsmanager_secret_version" "access_key_id" {
  secret_id     = aws_secretsmanager_secret.access_key_id.id
  secret_string = var.access_key_id
}

resource "aws_secretsmanager_secret" "secret_access_key" {
  name = "${local.resource_name}/secret_access_key"
  tags = local.tags
}

resource "aws_secretsmanager_secret_version" "secret_access_key" {
  secret_id     = aws_secretsmanager_secret.secret_access_key.id
  secret_string = var.secret_access_key
}
