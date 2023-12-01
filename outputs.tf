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