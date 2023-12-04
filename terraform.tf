terraform {

  cloud {
    organization = "Test-Abhinav"

    workspaces {
      name = "abc"
    }
  }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "=0.46.0"
    }
  }
}
