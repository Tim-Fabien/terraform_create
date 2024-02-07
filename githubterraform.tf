terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "terraform_create" {
  name        = "terraform_create"
  description = "My awesome codebase"

  visibility = "public"
  }
