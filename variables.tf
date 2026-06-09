variable "org_id" {
  description = "Clever Cloud organisation ID"
  type        = string
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
