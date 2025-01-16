output "user_pool_id" {
  value       = var.user_pool_id
  description = "string ||| The id for the user pool."
}

output "client_id" {
  value       = var.client_id
  description = "string ||| The id of the user pool client."
}

output "identity_pool_id" {
  value       = var.identity_pool_id
  description = "string ||| The id of the identity pool."
}

output "client_secret_secret_id" {
  value       = var.client_secret != "" ? aws_secretsmanager_secret.client_secret[0].id : ""
  description = "string ||| The secret id for the AWS secrets manager secret that contains the client_secret for the cognito user pool. Will return an empty string if the parameter is not provided in the inputs."
}

output "access_key_id_secret_id" {
  value       = aws_secretsmanager_secret.access_key_id.id
  description = "string ||| The secret id for the AWS secrets manager secret that contains the access key id for the cognito user pool."
}

output "secret_access_key_secret_id" {
  value       = aws_secretsmanager_secret.secret_access_key.id
  description = "string ||| The secret id for the AWS secrets manager secret for the secret access key for the cognito user pool."
}
