terraform {

  cloud {
    organization = "Test-Abhinav"

    workspaces {
      name = "abc-tfe-organization"
    }
  }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "=0.46.0"
    }
  }
}
