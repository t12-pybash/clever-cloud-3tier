variable "org_id" {
  description = "Clever Cloud organisation ID"
  type        = string
}

variable "clever_token" {
  description = "Clever Cloud OAuth token"
  type        = string
  sensitive   = true
}

variable "clever_secret" {
  description = "Clever Cloud OAuth secret"
  type        = string
  sensitive   = true
}

variable "consumer_key" {
  description = "Clever Cloud OAuth consumer key"
  type        = string
  sensitive   = true
}

variable "consumer_secret" {
  description = "Clever Cloud OAuth consumer secret"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "Clever Cloud region — eu-fr-1 for EU sovereignty"
  type        = string
  default     = "par"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "app_name" {
  description = "Base name for the application"
  type        = string
  default     = "java-3tier"
}

variable "db_name" {
  description = "PostgreSQL database name"
  type        = string
  default     = "app_db"
}
