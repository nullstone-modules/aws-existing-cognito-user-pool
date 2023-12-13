output "user_pool_id" {
  value       = var.user_pool_id
  description = "string ||| The id for the user pool."
}

output "client_id" {
  value       = var.client_id
  description = "string ||| The id of the user pool client."
}

output "web_client_id" {
  value       = var.web_client_id
  description = "string || The web client id of the user pool."
}

output "access_key_id" {
  value       = var.access_key_id
  description = "string || The access key id to be used to access this user pool."
}

output "secret_access_key" {
  value       = var.secret_access_key
  description = "string || The secret access key to be used to access this user pool."
}