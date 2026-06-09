# Data tier — managed PostgreSQL
resource "clevercloud_postgresql" "db" {
  name   = "${var.app_name}-db-${var.environment}"
  region = var.region
  plan   = "dev"

}

# Application tier — private REST API
resource "clevercloud_java_war" "application" {
  name               = "${var.app_name}-application-${var.environment}"
  region             = var.region
  min_instance_count = 1
  max_instance_count = 2
  smallest_flavor    = "XS"
  biggest_flavor     = "M"

  environment = {
    APP_ENV  = var.environment
    APP_TIER = "application"
    DB_HOST  = clevercloud_postgresql.db.host
    DB_PORT  = clevercloud_postgresql.db.port
    DB_NAME  = clevercloud_postgresql.db.database
    DB_USER  = clevercloud_postgresql.db.user
    DB_PASS  = clevercloud_postgresql.db.password
  }
}

# Presentation tier — public-facing
resource "clevercloud_java_war" "presentation" {
  name               = "${var.app_name}-presentation-${var.environment}"
  region             = var.region
  min_instance_count = 1
  max_instance_count = 3
  smallest_flavor    = "XS"
  biggest_flavor     = "M"

  environment = {
    APP_ENV  = var.environment
    APP_TIER = "presentation"
    API_URL  = "https://${var.app_name}-application-${var.environment}.cleverapps.io"
  }
}
