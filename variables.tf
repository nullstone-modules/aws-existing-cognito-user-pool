variable "user_pool_id" {
  type        = string
  description = "The id of the existing user pool. e.g. us-east-1_abcdef123"
}

variable "client_id" {
  type        = string
  description = "The id of the existing user pool client. e.g. abcdefabcdef1234567890123"
}

variable "identity_pool_id" {
  type        = string
  description = "The id of the existing identity pool. e.g. us-east-1:abcd01234-ab01-cd23-ef45-abcd012345678"
}

variable "access_key_id" {
  type        = string
  default     = ""
  sensitive   = true
  description = <<EOF
The AWS Access Key Id for accessing this user pool.
Provide a value for this variable if the user pool is in another AWS account.
Leave this blank if the user pool is in this same AWS account.
EOF
}

variable "secret_access_key" {
  type        = string
  default     = ""
  sensitive   = true
  description = <<EOF
The AWS Secret Access Key for accessing this user pool.
Provide a value for this variable if the user pool is in another AWS account.
Leave this blank if the user pool is in this same AWS account.
EOF
}