data "tfe_organization" "foo" {
  name = "Test-Abhinav"
}

resource "tfe_registry_module" "registry_module" {
  #for_each = local.terraform_registry_modules
  #name     = each.key
  name = "module-aws-gha-iam"
  organization = data.tfe_organization.foo.name
  vcs_repo {
    display_identifier = "abhinav-tripathi14/iac"
    identifier         = "abhinav-tripathi14/iac"
    oauth_token_id     = var.oauthtokenid
  }
}

variable "oauthtokenid" {
  default = "ot-wsYdmcLgfzBFVnL8"
}
