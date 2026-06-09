output "presentation_url" {
  description = "Public URL for the presentation tier"
  value       = "https://${var.app_name}-presentation-${var.environment}.cleverapps.io"
}

output "db_host" {
  description = "PostgreSQL host"
  value       = clevercloud_postgresql.db.host
  sensitive   = true
}

output "db_name" {
  description = "PostgreSQL database name"
  value       = clevercloud_postgresql.db.database
}
