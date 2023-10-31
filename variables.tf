variable "user_pool_id" {
  type: string
  description: "The id of the existing user pool. e.g. us-east-1_abcdef123"
}

variable "client_id" {
  type: string
  description: "The id of the existing user pool client. e.g. abcdefabcdef1234567890123"
}
