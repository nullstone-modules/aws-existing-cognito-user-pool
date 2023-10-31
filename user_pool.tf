data "aws_cognito_user_pool_client" "client" {
  user_pool_id = var.user_pool_id
  client_id    = var.client_id
}
