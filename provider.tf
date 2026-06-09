terraform {
  required_providers {
    clevercloud = {
      source  = "clevercloud/clevercloud"
      version = "~> 0.11"
    }
  }
}

provider "clevercloud" {
  # Credentials via environment variables:
  # export CC_CONSUMER_KEY=...
  # export CC_CONSUMER_SECRET=...
  # export CLEVER_TOKEN=...
  # export CLEVER_SECRET=...
  # export CC_ORGANISATION=...
  #
  # Get token/secret by running: clever login
  # Get consumer key/secret from: ~/.nvm/.../clever-tools/src/config/config.js
}
