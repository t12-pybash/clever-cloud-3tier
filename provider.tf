terraform {
  required_providers {
    clevercloud = {
      source  = "clevercloud/clevercloud"
      version = "~> 0.11"
    }
  }
}

provider "clevercloud" {
  token           = var.clever_token
  secret          = var.clever_secret
  consumer_key    = var.consumer_key
  consumer_secret = var.consumer_secret
  organisation    = var.org_id
}
