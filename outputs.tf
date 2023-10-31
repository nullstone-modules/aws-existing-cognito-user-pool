output "user_pool_id" {
  value       = data.aws_cognito_user_pool_client.client.user_pool_id
  description = "string ||| The id for the user pool."
}

output "client_id" {
  value       = data.aws_cognito_user_pool_client.client.id
  description = "string ||| The id of the user pool client."
}
