data "aws_cognito_user_pool_client" "this" {
  user_pool_id = var.user_pool_id
  client_id    = var.client_id
}

locals {
  client_secret = data.aws_cognito_user_pool_client.this.client_secret
}
